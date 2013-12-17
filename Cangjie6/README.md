Cangjie6
========
蒼頡檢字法

1. This is a Chinese input method(Cangjie, 6th edition) based on Rime input engine
2. cangjie6.dict.yaml is the charactor encoding list, cangjie6.extended.dict.yaml is the phrase list, and cangjie6.schema.yaml is the configuration file
3. To personalise, follow instructions in cangjie6.schema.yaml

一、本方案爲爲Rime輸入法引擎所製檢頡檢字法輸入方案  
二、cangjie6.dict.yaml爲蒼頡檢字法字表，cangjie6.extended.dict.yaml爲詞表，cangjie6.schema.yaml爲方案配置文件   
三、如欲更改默認配置，請循cangjie6.schema.yaml中註釋進行

	使用方法：
	  1. 右鍵點擊 cangjie6.schema.yaml 、 cangjie6.dict.yaml 、 cangjie6.extended.dict.yaml ，下載鏈接檔至電腦
	  2. 將此三個文件放入【用戶檔案夾】
	  	MacOS X: ~/Library/Rime (鼠鬚管狀態欄選單中的「用戶文檔…」)
	  	Windows: User_Direction\AppData\Roaming\Rime (開始→所有程式→小狼毫→用戶檔案夾)
	  3. 在 default.custom.yaml中加入
	  	(patch:)
	  	    schema_list:
		    - schema: cangjie6
	4. 重新佈置後用 Control+` 或 F4 (Windows) 叫出〔方案選單〕，選中蒼頡檢字法