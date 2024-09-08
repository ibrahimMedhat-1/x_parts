import 'package:x_parts/src/core/utils/app_imports.dart';

class HomeSearchFilterWidget extends StatefulWidget {
  const HomeSearchFilterWidget({
    super.key,
  });

  @override
  State<HomeSearchFilterWidget> createState() => _HomeSearchFilterWidgetState();
}

class _HomeSearchFilterWidgetState extends State<HomeSearchFilterWidget> {
    bool filterHasData = false;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: filterHasData
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20.sp),
                  decoration: BoxDecoration(
                    color: AppColors.mainDarkColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Assets.svgs.homepage.searchIcon.svg(),
                ),
                30.isWidth,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: AppColors.mainDarkColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    children: [
                      Text(
                        '2006',
                        style: TextStyles.font12WhiteRegular,
                      ),
                      10.isWidth,
                      const VerticalDivider(),
                      10.isWidth,
                      Text(
                        'Mitsubishi',
                        style: TextStyles.font12WhiteRegular,
                      ),
                      10.isWidth,
                      const VerticalDivider(),
                      10.isWidth,
                      SizedBox(
                        width: 70.w,
                        child: DropdownButton(
                          underline: const SizedBox.shrink(),
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: AppColors.mainPinkColor,
                          ),
                          hint: Text(
                            'Make',
                            style: TextStyles.font18WhiteMedium.copyWith(color: AppColors.mainPinkColor),
                          ),
                          isExpanded: true,
                          dropdownColor: Colors.black,
                          onChanged: (value) {},
                          items: [
                            DropdownMenuItem(
                              value: 'BMW',
                              child: Text(
                                'BMW',
                                style: TextStyles.font12WhiteRegular,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Mercedes',
                              child: Text(
                                'Mercedes',
                                style: TextStyles.font12WhiteRegular,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Chevrolet',
                              child: Text(
                                'Chevrolet',
                                style: TextStyles.font12WhiteRegular,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Toyota',
                              child: Text(
                                'Toyota',
                                style: TextStyles.font12WhiteRegular,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Renault',
                              child: Text(
                                'Renault',
                                style: TextStyles.font12WhiteRegular,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Peugeot',
                              child: Text(
                                'Peugeot',
                                style: TextStyles.font12WhiteRegular,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          : TextFormFieldCustomized(
              enabled: true,
              obscureText: false,
              autoFocus: false,
              keyboardType: TextInputType.text,
              hintText: 'Search...',
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Assets.svgs.homepage.searchIcon.svg(),
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  VerticalDivider(
                    width: 2,
                    thickness: 4,
                    color: Colors.grey.shade800,
                  ),
                  10.isWidth,
                  InkWell(
                      onTap: () => showModalBottomSheet(
                            backgroundColor: AppColors.mainDarkColor,
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => Padding(
                              padding: EdgeInsets.only(top: 20.sp, left: 20.sp, right: 20.sp),
                              child:   FilterBody(
                                onSearch: (){
                                  context.pop();
                                  setState(() {
                                    filterHasData=true;
                                  });
                                },
                              ),
                            ),
                          ),
                      child: Assets.svgs.homepage.filterIcon.svg())
                ],
              ),
            ),
    );
  }
}

