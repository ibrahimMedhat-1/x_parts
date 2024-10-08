import 'package:x_parts/src/core/utils/app_imports.dart';

class FilterBody extends StatelessWidget {
  const FilterBody({super.key, required this.onSearch});

  final GestureTapCallback onSearch;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircularButtonCustomized(
              buttonColor: AppColors.pinkColorWithOpacity,
              icon: Icons.arrow_back,
            ),
            const Spacer(),
            Text('Filter', style: TextStyles.font24WhiteMedium),
            const Spacer(flex: 2),
          ],
        ),
        30.isHeight,
        Container(
          decoration: BoxDecoration(
              color: AppColors.lightMainDarkColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(60.r))),
          child: DropdownButton(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            underline: const SizedBox.shrink(),
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: AppColors.mainPinkColor,
            ),
            hint: Text(
              'Make',
              style: TextStyles.font24WhiteMedium.copyWith(
                color: AppColors.mainPinkColor,
                fontSize: 20.sp,
              ),
            ),
            dropdownColor: Colors.black,
            onChanged: (value) {},
            items: [
              DropdownMenuItem(
                value: 'BMW',
                child: Text(
                  'BMW',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
              DropdownMenuItem(
                value: 'Mercedes',
                child: Text(
                  'Mercedes',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
              DropdownMenuItem(
                value: 'Chevrolet',
                child: Text(
                  'Chevrolet',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
              DropdownMenuItem(
                value: 'Toyota',
                child: Text(
                  'Toyota',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
              DropdownMenuItem(
                value: 'Renault',
                child: Text(
                  'Renault',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
              DropdownMenuItem(
                value: 'Peugeot',
                child: Text(
                  'Peugeot',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
            ],
          ),
        ),
        30.isHeight,
        Text(
          'Model',
          style: TextStyles.font12WhiteRegular.copyWith(
            color: AppColors.mainPinkColor,
          ),
        ),
        10.isHeight,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.lightMainDarkColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(60.r))),
          child: DropdownButton(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            underline: const SizedBox.shrink(),
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
            ),
            hint: Text(
              'Model',
              style: TextStyles.font24WhiteMedium.copyWith(
                fontSize: 20.sp,
              ),
            ),
            dropdownColor: Colors.black,
            onChanged: (value) {},
            items: [
              DropdownMenuItem(
                value: 'X6',
                child: Text(
                  'X6',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
              DropdownMenuItem(
                value: 'X4',
                child: Text(
                  'X4',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
              DropdownMenuItem(
                value: 'X5',
                child: Text(
                  'X5',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
            ],
          ),
        ),
        30.isHeight,
        Text(
          'Year',
          style: TextStyles.font12WhiteRegular.copyWith(
            color: AppColors.mainPinkColor,
          ),
        ),
        10.isHeight,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.lightMainDarkColor,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(60.r))),
          child: DropdownButton(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            underline: const SizedBox.shrink(),
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
            ),
            hint: Text(
              'Year',
              style: TextStyles.font24WhiteMedium.copyWith(
                fontSize: 20.sp,
              ),
            ),
            dropdownColor: Colors.black,
            onChanged: (value) {},
            items: [
              DropdownMenuItem(
                value: '2021',
                child: Text(
                  '2021',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
              DropdownMenuItem(
                value: '2022',
                child: Text(
                  '2022',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
              DropdownMenuItem(
                value: '2023',
                child: Text(
                  '2023',
                  style: TextStyles.font18WhiteMedium,
                ),
              ),
            ],
          ),
        ),
        40.isHeight,
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          overlayColor: WidgetStatePropertyAll<Color>(Colors.transparent),
          radius: 0,
          onTap: onSearch,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Assets.svgs.homepage.searchBottomSheetBackground.svg(),
                Text(
                  'Search',
                  style: TextStyles.font24WhiteMedium.copyWith(
                    fontWeight: FontWeightHelper.regular,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
