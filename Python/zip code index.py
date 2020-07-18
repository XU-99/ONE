code = {"台北市":{"中正區": 100, "大同區": 103, "中山區": 104, "松山區": 105, "大安區": 106, "萬華區": 108, "信義區": 110, "士林區": 111, "北投區": 112, "內湖區": 114, "南港區": 115, "文山區": 116}, "基隆市":{"仁愛區": 200, "信義區": 201, "中正區": 202, "中山區": 203, "安樂區": 204, "暖暖區": 205, "七堵區": 206},"新北市": {"萬里區": 207, "金山區": 208, "板橋區": 220, "汐止區": 221, "深坑區": 222, "石碇區": 223, "瑞芳區": 224, "平溪區": 226, "雙溪區": 227, "貢寮區": 228, "新店區": 231, "坪林區": 232, "烏來區": 233, "永和區": 234, "中和區": 235, "土城區": 236, "三峽區": 237, "樹林區": 238, "鶯歌區": 239, "三重區": 241, "新莊區": 242, "泰山區": 243, "林口區": 244, "蘆洲區": 247, "五股區": 248, "八里區": 249, "淡水區": 251, "三芝區": 252, "石門區": 253}}


def list_zip(city):
    a = code[city]
    for name,value in a.items():
        print(name,':',value, sep = '')


def area_to_zip(area):
    for name,value in code.items():
        for key in value:
            if key == area:
                print('(',name,',',value[key],')', sep = '') 
            else:
                continue


def zip_to_area(zip_code):
    for value in code.values():
        for name,key in value.items():
            if key == int(zip_code):
                print(name) 
            else:
                continue


find_str = input('請輸入要查詢的市:')
list_zip(find_str)
find_str1 = input('請輸入要查詢的區:')
area_to_zip(find_str1)
find_str2 = input('請輸入要查詢的區號:')
zip_to_area(find_str2)