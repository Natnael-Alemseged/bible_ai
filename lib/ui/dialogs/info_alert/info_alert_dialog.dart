import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../core/constants/ui_helpers.dart'; // Ensure these are defined
import '../../../gen/assets.gen.dart'; // Ensure this path is correct

import 'info_alert_dialog_model.dart';

class InfoAlertDialog extends StackedView<InfoAlertDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const InfoAlertDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      InfoAlertDialogModel viewModel,
      Widget? child,
      ) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 32), // Adjusted horizontal padding slightly
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          image: DecorationImage(
            image: AssetImage(Assets.paywallBackground.path),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Close button
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => completer(DialogResponse(confirmed: false)),
                ),
              ),
              const SizedBox(height: 12),

              // Try Premium badge (left aligned)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF6D4), // Light yellow background
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Essential to keep badge wrapped
                  children: const [
                    Icon(Icons.diamond, color: Colors.black, size: 16),
                    SizedBox(width: 6),
                    Text('Try Premium', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Heading
              const Text(
                'Unlock the Full Bible Ai Experience',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),

              // Plan cards
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => viewModel.setSelectedPlan('monthly'),
                      child: _buildPlanBox(
                        title: 'Monthly',
                        price: '\$14.99',
                        desc: 'Billed & recurring monthly\nCancel anytime',
                        selected: viewModel.selectedPlan == 'monthly',
                      ),
                    ),
                  ),
                  horizontalSpaceSmall, // Using ui_helpers for spacing
                  Expanded(
                    child: GestureDetector(
                      onTap: () => viewModel.setSelectedPlan('yearly'),
                      child: _buildPlanBox(
                        title: 'Yearly',
                        price: '\$47.99',
                        desc: 'Billed & recurring Yearly\nCancel anytime',
                        selected: viewModel.selectedPlan == 'yearly',
                        showDiscount: true,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Included with Bible AI Pro section
              Stack( // This Stack wraps both the background box and the floating header
                clipBehavior: Clip.none, // Allows children to overflow for the floating header
                children: [
                  // Blurred, semi-transparent box for features
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.08), // Slightly transparent white
                      border: Border.all(color: Colors.white.withOpacity(0.2)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _featureItem('Chat with AI Bible Experts'),
                        _featureItem('Instant Biblical Insights'),
                        _featureItem('Ad-Free Experience'),
                        _featureItem('Personalized recommendations & saved chats'),
                      ],
                    ),
                  ),
                  // Floating pill header (positioned relative to the Stack)
                  Positioned(
                    top: -12, // Adjust this value to control how much it overlaps
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white, // White background for the pill
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          'Included with Bible AI Pro',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Subscribe Button
              SizedBox( // Use SizedBox to give the button full width
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48), // Highly rounded
                    ),
                    elevation: 0, // Remove shadow for a flatter look
                  ),
                  onPressed: () => completer(DialogResponse(confirmed: true)),
                  child: const Text(
                    'Subscribe for \$3.59/ Annually', // Consider making this dynamic based on selected plan
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Terms
              Text.rich(
                TextSpan(
                  text: 'By tapping Continue, you will be charged, your subscription will auto-renew for the same price and package length until you cancel via App Store settings, and you agree to our ',
                  style: TextStyle(fontSize: 11, color: Colors.white.withOpacity(0.9)),
                  children: const [ // Made const since children are constant
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(text: '.'),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method for building plan boxes
  Widget _buildPlanBox({
    required String title,
    required String price,
    required String desc,
    required bool selected,
    bool showDiscount = false,
  }) {
    // Determine text color based on selection
    final textColor = selected ? Colors.black : Colors.white;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: selected ? Colors.white : Colors.white.withOpacity(0.2),
        border: Border.all(
          color: selected ? Colors.amber : Colors.white.withOpacity(0.7), // Adjusted border color when not selected
          width: 2,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        clipBehavior: Clip.none, // Allows discount and checkmark to overflow
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.w600, color: textColor)),
              const SizedBox(height: 4),
              Text(price, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: textColor)),
              const SizedBox(height: 4),
              Text(desc, style: TextStyle(fontSize: 12, color: textColor)),
            ],
          ),
          if (selected)
            Positioned(
              right: -8, // Positioned slightly outside for better visibility
              bottom: -8,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.amber, // Amber background for checkmark
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.check, size: 16, color: Colors.black), // Checkmark icon
              ),
            ),
          if (showDiscount)
            Positioned(
              top: -20, // Positioned above the box
              left: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.amber, // Amber background for discount badge
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Save 75%',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black), // Black text for discount
                ),
              ),
            ),
        ],
      ),
    );
  }

  // Helper method for feature list items
  Widget _featureItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: Colors.amber, size: 20), // Amber checkmark
          // Image.asset(Assets.checkCircle.path,scale: 20,),
          horizontalSpaceSmall, // Using ui_helpers for spacing
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  @override
  InfoAlertDialogModel viewModelBuilder(BuildContext context) => InfoAlertDialogModel();
}