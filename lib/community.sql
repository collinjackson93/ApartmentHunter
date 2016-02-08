SQLite format 3   @    U                                                            U -��   �    �I � �WW�%tablesqlitebrowser_rename_column_i}W indexsqlite_autoindex_sqlitebrowser_rename_coi}W indexsqlite_autoindex_sqlitebrowser_rename_column_new_table_1sqlitebrowser_rename_column_new_table       9M' indexsqlite_autoindex_CommunityArea_2CommunityArea9M' indexsqlite_autoindex_CommunityArea_1CommunityArea
�''�ytableCommunityAreaCommunityAreaCREATE TABLE "CommunityArea" (
	`communityID`	INTEGER UNIQUE,
	`name`	TEXT NOT NULL,
	`landArea`	INTEGER NOT NULL,
	`latLng`	TEXT NOT NULL,
	`sw`	TEXT NOT NULL,
	`ne`	TEXT NOT NULL,
	`truliaID`	INTEGER NOT NULL UNIQUE,
	PRIMARY KEY(communityID)
)�''�{tableCommunityDataCommunityDataCREATE TABLE "CommunityData" (
	`communityID`	INTEGER,
	`crimePctOfAvg`	REAL,
	`nightlifePctOfAvg`	REAL,
	`crowdedPctOfAvg`	REAL,
	`pricePctOfAvg`	REAL,
	PRIMARY KEY(communityID),
	FOREIGN KEY(`communityID`) REFERENCES CommunityArea(community      �    �`8���pH ����X8 � � � p H Englewood�41.7&= ?��?����?���*�w6@�MX�~?������r&' ?�u��Z�R?�w�M�Cv?�6�l�5?�ѕ��6&& ?�)/��?���i̔�?��0��?��Pʞ��&% ?��v:�1?��a��R?�����?�mȅ��&! ?��`�=y~?����e�?ӽ!;��?�d��ID&  @��6D�@�d���5?�2��,1?�6b5�)  ?�9U�C��?�T`��bk?��Ѭ��& ?�o/ײ5�?�k#oֽ�?�o���Zn?�Lsu.�& ?��1��:�?�7����?�2��,1?�>0z��z& ?�D��ڞ�?��A�^h@�!;��?�uC8GC& ?�:���>?�z�&߳?�h��?�����]& ?�T]�A�?�ҽ�#@�����?��u8�h& ?�{����=?�@5���?�T1%CS@LRş& ?��N2���?���s=?��Ѭ��?�rWM�4�&
 ?�be���?��m%G�a?�6�l�5?�!D���&	 ?��� ք�@�[���?��A��?��j��	& @����D�?�\�j�R?�2��,1?�#�)��& ?ﳐ�=�?�Z��ݤ?��A��?����Ճ& ?�@gbAK?�d���5?��A��?�� �'	�& ?���(�.?�S��?��h��?�E� Ej& ?�'6_��?��D,�-?�ډ]���?��O��
& ?�`�(��?����\0?�6�l�5?�L��t�& ?���4�?�l���?��i�Ƙ�?�ԗ'��& ?���2�1~?�L
�8�?�؅��[�?�$      �    ��}*�{. � � @  ���`8 � � � p        O #-55Forest Glen v41.983333,-87.7541.968799,-87.78283842.015367,-87.726704ZN )%55Jefferson Park�41.98,-87.7741.968439,-87.78801441.997022,-87.755098hK
 %#55Norwood Park+f41.98,-87.841.968648,-87.83649442.002525,-87.778043|K	 #%55Edison Park�41.01,-87.8141.995218,-87.82175942.018944,-87.806567XW +555Near North Side�41.899986,-87.62999741.887703,-87.65445441.911852,-87.599008uT %555Lincoln Park D41.919944,-87.65098541.910653,-87.67669841.932239,-87.623311lQ 555Lake View�41.943516,-87.65411141.932563,-87.67351741.959375,-87.636953kL %%55North Center�41.95,-87.6841.932140,-87.69582841.961505,-87.673855yM )%53Lincoln Square41.97,-87.6941.966774,-87.69379441.973123,-87.68224mN 555Uptown�41.969992,-87.66007541.954103,-87.67409641.976249,-87.636845�G !55West Ridge#�42,-87.6941.983160,-87.70820842.019293,-87.676322�K #%55Rogers Park�42.01,-87.6741.997966,-87.68260842.023093,-8   '   
   Z ���������������������~xrlf`ZT.01,-87.8141.995218,-87.82175942.018944,-87.806567XK
 %#55Norwood Park+f41.98,-87.841.968648,-87.83649442.002525,-87.778043|j 
 L %%55North Center�41.95,-87.6841.932140,-87.69582841.961505,-87.673855yM )%53Lincoln Square41.97,-87.6941.966774,-87.69379441.973123,-87.68224m   ^%555Logan Square �41.928328,-87.70667541.913790,-87.72947341.932281,-87.688055oV )55N )%55Jefferson Park�41.98,-87.7741.968439,-87.78801441.997022,-87.755098hW +555Near North Side�41.899986,-87.62999741.887703,-87.65445441.911852,-87.599008uT %555Lincoln Park D41.919944,-87.65098541.910653,-87.67669841.932239,-87.623311lQ 555Lake View�41.943516,-87.65411141.932563,-87.67351741.959375,-87.636953kN 555Uptown�41.969992,-87.66007541.954103,-87.674096NNMMCC@@??==''&&%%!!  

				
   = �K�=��nRg��`����|�u�Y����D��        &
 ?�H�µ?�7�7��?�6�l�6?��OM�6   ?��b�8Q�?��}k�6�?�G�G�G�& ?�3�j,�?��Q����?�ډ]���?���U�~& ?�˔Cyn?�{l(���?�؅��[�?��G��H�& ?��e�\ΰ?�w���Щ?��Ѭ��?�s׫M�& ?���(�.?�S��?��h��?�E� Ej& ?�:���>?�z�&߳?�h��?�����]& ?��1��:�?�7����?�2��,1?�>0z��z& ?�D��ڞ�?��A�^h@�!;��?�uC8GC& ?�'6_��?��D,�-?�ډ]���?��O��
& ?�`�(��?����\0?�6�l�5?�L��t�& ?�T]�A�?�ҽ�#@�����?��u8�h& ?�{����=?�@5���?�T1%CS@LRş& ?��N2���?���s=?��Ѭ��?�rWM�4�&
 ?�be���?��m%G�a?�6�l�5?�!D���&	 ?��� ք�@�[���?��A��?��j��	& @����D�?�\�j�R?�2��,1?�#�)��& ?ﳐ�=�?�Z��ݤ?��A��?����Ճ& ?�@gbAK?�d���5?��A��?�� �'	�& WM�CP@\?x=j'`&[%v!p wU�eoFZh|
X	ulkym��	�� � ���I � �WW�%tablesqlitebrowser_rename_column_i}W indexsqlite_autoindex_sqlitebrowser_rename_coi                                                                                                i}W indexsqlite_autoindex_sqlitebrowser_rename_column_new_table_1sqlitebrowser_rename_column_new_table   C    9M' indexsqlite_autoindex_CommunityArea_2CommunityArea9M' indexsqlite_autoindex_CommunityArea_1CommunityArea
�''�ytableCommunityAreaCommunityAreaCREATE TABLE "CommunityArea" (
	`communityID`	INTEGER UNIQUE,
	`name`	TEXT NOT NULL,
	`landArea`	INTEGER NOT NULL,
	`latLng`	TEXT NOT NULL,
	`sw`	TEXT NOT NULL,
	`ne`	TEXT NOT NULL,
	`truliaID`	INTEGER NOT NULL UNIQUE,
	PRIMARY KEY(communityID)
)  !''�{tableCommunityDataCommunityDataCREATE TABLE "CommunityData" (
	`communityID`	INTEGER,
	`crimePctOfAvg`	REAL,
	`nightlifePctOfAvg`	REAL,
	`crowdedPctOfAvg`	REAL,
	`pricePctOfAvg`	REAL,
	PRIMARY KEY(communityID),
	FOREIGN KEY(`communityID`) REFERENCES CommunityArea(communityID)
)   ^ ��^�;-�k�y4���P������IBW��d�                                                                                                                                                                                                                                                                                                                                                                                                                                      i}W indexsqlite_autoindex_sqlitebrowser_rename_column_new_table_1sqlitebrowser_rename_column_new_table   HWW�Atab9M' indexsqlite_autoindex_CommunityData_1CommunityData�)''�tableCommunityDataCommunityDataCREATE TABLE "CommunityData" (
	`communityID`	INTEGER UNIQUE,
	`crimePctOfAvg`	REAL,
	`nightlifePctOfAvg`	REAL,
	`crowdedPctOfAvg`	REAL,
	`pricePctOfAvg`	REAL,
	PRIMARY KEY(communityID),
	FOREIGN KEY(`communityID`) REFERENCES `CommunityArea`(`communityID`)
)9M' indexsqlite_autoindex_CommunityArea_2CommunityArea   � ���`8���pH ����X8 � � � p H                &= ?��?����?���*�w6@�MX�~?������r&' ?�u��Z�R?�w�M�Cv?�6�l�5?�ѕ��6&& ?�)/��?���i̔�?��0��?��Pʞ��&% ?��v:�1?��a��R?�����?�mȅ��&! ?��`�=y~?����e�?ӽ!;��?�d��ID&  @��6D�@�d���5?�2��,1?�6b5�)  ?�9U�C��?�T`��bk?��Ѭ��& ?�o/ײ5�?�k#oֽ�?�o���Zn?�Lsu.�& ?��1��:�?�7����?�2��,1?�>0z��z& ?�D��ڞ�?��A�^h@�!;��?�uC8GC& ?�:���>?�z�&߳?�h��?�����]& ?�T]�A�?�ҽ�#@�����?��u8�h& ?�{����=?�@5���?�T1%CS@LRş& ?��N2���?���s=?��Ѭ��?�rWM�4�&
 ?�be���?��m%G�a?�6�l�5?�!D���&	 ?��� ք�@�[���?��A��?��j��	& @����D�?�\�j�R?�2��,1?�#�)��& ?ﳐ�=�?�Z��ݤ?��A��?����Ճ& ?�@gbAK?�d���5?��A��?�� �'	�& ?���(�.?�S��?��h��?�E� Ej& ?�'6_��?��D,�-?�ډ]���?��O��
& ?�`�(��?����\0?�6�l�5?�L��t�& ?���4�?�l���?��i�Ƙ�?�ԗ'��& ?���2�1~?�L
�8�?�؅��[�?�$_��#x   � ��]
�`�                                                                                                                                                                                                                                                                                                                                                                                                                  N  W& +555Grand Boulevard�41.809997,-87.61999241.801924,-87.62887141.823930,-87.606985`QM 555EdgewaterN41.989992,-87.66005441.976194,-87.67462741.998204,-87.650680WVC )555West Englewood�41.779997,-87.67001141.757737,-87.67838641.794286,-87.654782�P@ 555Clearing�41.779993,-87.76006141.770518,-87.80043941.785862,-87.737625PQ? 555Gage Park�41.789984,-87.69005441.786257,-87.71328641.804685,-87.679469\P= 555New City1.41.809989,-87.66002241.793881,-87.68398041.823609,-87.636124xO' 555Kenwood41.809992,-87.60000941.802413,-87.60639741.817319,-87.580733j
   Z ���������������������~xrlf`Z                                                                                                                                                                                                                                                                                                                                                                                                                                                                        &' ?�{��DLJ?�ad9R$?�6�l�5&' ?�u��Z�R?�w�M�Cv?�6�l�5?�ѕ��6  ?�9U�C��?�T`��bk?��Ѭ��&M ?ꓰ�wFB?��˴���?�~I��|?�6�0w&C ?��4d�?�EH�u��?�R-�"�Q?�Ӕ�3�&@ ?��f���?�0�,�I�?����?�����`&? ?�p�#�'|?ߣ�3|(@�e�^�?��M�6-�&= ?��?����?���*�w6@�MX�~?������r&& ?�)/��?���i̔�?��0��?�MMCC@@??==''&&%%!!  

				         �`8���pH ����X8 � � � p H                &= ?��?����?���*�w6@�MX�~?������r&' ?�u��Z�R?�w�M�Cv?�6�l�5?�ѕ��6&& ?�)/��?���i̔�?��0��?��Pʞ��&% ?��v:�1?��a��R?�����?�mȅ��&! ?��`�=y~?����e�?ӽ!;��?�d��ID&  @��6D�@�d���5?�2��,1?�6b5�)  ?�9U�C��?�T`��bk?��Ѭ��& ?�o/ײ5�?�k#oֽ�?�o���Zn?�Lsu.�& ?��1��:�?�7����?�2��,1?�>0z��z& ?�D��ڞ�?��A�^h@�!;��?�uC8GC& ?�:���>?�z�&߳?�h��?�����]& ?�T]�A�?�ҽ�#@�����?��u8�h& ?�{����=?�@5���?�T1%CS@LRş& ?��N2���?���s=?��Ѭ��?�rWM�4�&
 ?�be���?��m%G�a?�6�l�5?�!D���&	 ?��� ք�@�[���?��A��?��j��	& @����D�?�\�j�R?�2��,1?�#�)��& ?ﳐ�=�?�Z��ݤ?��A��?����Ճ& ?�@gbAK?�d���5?��A��?�� �'	�& ?���(�.?�S��?��h��?�E� Ej& ?�'6_��?��D,�-?�ډ]���?��O��
& ?�`�(��?����\0?�6�l�5?�L��t�& ?���4�?�l���?��i�Ƙ�?�ԗ'��& ?���2�1~?�L
�8�?�؅��[�?�$   =          	               	                                                                                                                                i}W indexsqlite_autoindex_sqlitebrowser_rename_column_new_table_2sqlitebrowser_rename_column_new_tablei}W indexsqlite_autoindex_sqlitebrowser_rename_column_new_table_1sqlitebrowser_rename_column_new_table
�eWW�)tablesqlitebrowser_rename_column_new_tablesqlitebrowser_rename_column_new_tableCREATE TABLE `sqlitebrowser_rename_column_new_table` (
	`communityID`	INTEGER UNIQUE,
	`name`	TEXT NOT NULL,
	`landArea`	INTEGER NOT NULL,
	`latLng`	TEXT NOT NULL,
	`sw`	TEXT NOT NULL,
	`ne`	TEXT NOT NULL,
	`truliaID`	INTEGER NOT NULL UNIQUE,
	PRIMARY KEY(communityID)
)�''�{tableCommunityDataCommunityDataCREATE TABLE "CommunityData" (
	`communityID`	INTEGER,
	`crimePctOfAvg`	REAL,
	`nightlifePctOfAvg`	REAL,
	`crowdedPctOfAvg`	REAL,
	`pricePctOfAvg`	REAL,
	PRIMARY KEY(communityID),
	FOREIGN KEY(`communityID`) REFERENCES CommunityArea(communityID)
)    H ���`8���pH ����X8 � � � p H                &= ?��?����?���*�w6@�MX�~?������r&' ?�u��Z�R?�w�M�Cv?�6�l�5?�ѕ��6&& ?�)/��?���i̔�?��0��?��Pʞ��&% ?��v:�1?��a��R?�����?�mȅ��&! ?��`�=y~?����e�?ӽ!;��?�d��ID&  @��6D�@�d���5?�2��,1?�6b5�)  ?�9U�C��?�T`��bk?��Ѭ��& ?�o/ײ5�?�k#oֽ�?�o���Zn?�Lsu.�& ?��1��:�?�7����?�2��,1?�>0z��z& ?�D��ڞ�?��A�^h@�!;��?�uC8GC& ?�:���>?�z�&߳?�h��?�����]& ?�T]�A�?�ҽ�#@�����?��u8�h& ?�{����=?�@5���?�T1%CS@LRş& ?��N2���?���s=?��Ѭ��?�rWM�4�&
 ?�be���?��m%G�a?�6�l�5?�!D���&	 ?��� ք�@�[���?��A��?��j��	& @����D�?�\�j�R?�2��,1?�#�)��& ?ﳐ�=�?�Z��ݤ?��A��?����Ճ& ?�@gbAK?�d���5?��A��?�� �'	�& ?���(�.?�S��?��h��?�E� Ej& ?�'6_��?��D,�-?�ډ]���?��O��
& ?�`�(��?����\0?�6�l�5?�L��t�& ?���4�?�l���?��i�Ƙ�?�ԗ'��& ?���2�1~?�L
�8�?�؅��[�?�$_��#x   ` ���`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                &M ?ꓰ�wFB?��˴���?�~I��|?�6�0w&C ?��4d�?�EH�u��?�R-�"�Q?�Ӕ�3�&@ ?��f���?�0�,�I�?����?�����`&? ?�p�#�'|?ߣ�3|(@�e�^�?��M�6-�   � 8���xP( ����`                                                                                                                                                                                                                                                                                                                                                                                                                              i}W indexsqlite_au&= ?��?����?���*�w6@�MX�~?������r&' ?�u��Z�R?�w�M�Cv?�6�l�5?�ѕ��6&& ?�)/��?���i̔�?��0��?��Pʞ��&% ?��v:�1?��a��R?�����?�mȅ��&! ?��`�=y~?����e�?ӽ!;��?�d��ID&  @��6D�@�d���5?�2��,1?�6b5�)  ?�9U�C��?�T`��bk?��Ѭ��& ?�o/ײ5�?�k#oֽ�?�o���Zn?�Lsu.�& ?��1��:�?�7����?�2��,1?�>0z��z& ?�D��ڞ�?��A�^h@�!;��?�uC8GC&M ?ꓰ�wFB?��˴���?�~I��|?�6�0w&C ?��4d�?�EH�u��?�R-�"�Q?�Ӕ�3�&@ ?��f���?�0�,�I�?����?�����`&? ?�p�#�'|?ߣ�3|(@�e�^�?��M�6-�    @ �j�}*�{. � � @                                O #-55Forest Glen v41.983333,-87.7541.968799,-87.78283842.015367,-87.726704ZN )%55Jefferson Park�41.98,-87.7741.968439,-87.78801441.997022,-87.755098hK
 %#55Norwood Park+f41.98,-87.841.968648,-87.83649442.002525,-87.778043|K	 #%55Edison Park�41.01,-87.8141.995218,-87.82175942.018944,-87.806567XW +555Near North Side�41.899986,-87.62999741.887703,-87.65445441.911852,-87.599008uT %555Lincoln Park D41.919944,-87.65098541.910653,-87.67669841.932239,-87.623311lQ 555Lake View�41.943516,-87.65411141.932563,-87.67351741.959375,-87.636953kL %%55North Center�41.95,-87.6841.932140,-87.69582841.961505,-87.673855yM )%53Lincoln Square41.97,-87.6941.966774,-87.69379441.973123,-87.68224mN 555Uptown�41.969992,-87.66007541.954103,-87.67409641.976249,-87.636845�G !55West Ridge#�42,-87.6941.983160,-87.70820842.019293,-87.676322�K #%55Rogers Park�42.01,-87.6741.997966,-87.68260842.023093,-87.655872�    N �R��L��M � � N                                                O' 555Kenwood41.809992,-87.60000941.802413,-87.60639741.817319,-87.580733jW& +555Grand Boulevard�41.809997,-87.61999241.801924,-87.62887141.823930,-87.606985`S% #555Fuller Park041.809952,-87.62669941.794551,-87.63555841.823532,-87.629378[W! +555Near South Side�41.850959,-87.62049541.846113,-87.63430241.867913,-87.604348vL  555Loop�41.883325,-87.63345041.875745,-87.63736141.888170,-87.614089pV )555Near West Side:*41.869997,-87.67001641.859556,-87.68879941.889083,-87.638331wZ 1555East Garfield Park�41.879994,-87.70001541.869323,-87.72043741.888048,-87.691169UQ 555West Town.@41.899972,-87.67993041.888251,-87.70620641.915521,-87.643706�U '555Humboldt Park$h41.879992,-87.70004341.887962,-87.74086941.914154,-87.694178eT %555Logan Square �41.928328,-87.70667541.913790,-87.72947341.932281,-87.688055oV )555Belmont Cragin'�41.929976,-87.76006441.916171,-87.78991441.938648,-87.742535F   ^ �[	�^                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            QM 555EdgewaterN41.989992,-87.66005441.976194,-87.67462741.998204,-87.650680WVC )555West Englewood�41.779997,-87.67001141.757737,-87.67838641.794286,-87.654782�P@ 555Clearing�41.779993,-87.76006141.770518,-87.80043941.785862,-87.737625PQ? 555Gage Park�41.789984,-87.69005441.786257,-87.71328641.804685,-87.679469\P= 555New City1.41.809989,-87.66002241.793881,-87.68398041.823609,-87.636124x