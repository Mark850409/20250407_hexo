# Java 全端工程師考前重點小抄

---

# 一、SQL 語法重點整理

## 常用語法與說明
- **SELECT**: 從資料表中查詢資料。
- **WHERE**: 根據指定條件篩選查詢結果。
- **ORDER BY**: 根據一個或多個欄位對結果集進行排序 (預設升序 ASC)。
- **GROUP BY**: 將結果集按照一個或多個欄位進行分組，通常與聚合函數一起使用。
- **JOIN**:
    - **INNER JOIN**: 返回兩個表中匹配的行。
    - **LEFT JOIN (LEFT OUTER JOIN)**: 返回左表中的所有行，以及右表中與左表匹配的行。
    - **RIGHT JOIN (RIGHT OUTER JOIN)**: 返回右表中的所有行，以及左表中與右表匹配的行。
    - **FULL JOIN (FULL OUTER JOIN)**: 返回當左表或右表中存在匹配時的所有行。
- **子查詢（Subquery）**: 嵌套在另一個 SQL 查詢內的查詢。
- **DISTINCT**: 移除結果集中的重複行。
- **AS（別名）**: 給資料表或欄位取一個臨時名稱。
- **LIMIT / TOP**: 限制結果集返回的行數 (語法依資料庫系統不同，如 MySQL 使用 LIMIT，SQL Server 使用 TOP)。
- **COUNT()**: 聚合函數，計算行數。其他常用聚合函數有 SUM(), AVG(), MAX(), MIN()。
- **HAVING**: 用於過濾經過 `GROUP BY` 分組後的結果集，可以使用聚合函數。

## 範例與解析
```sql
-- 找出所有姓名重複且重複次數大於 1 的員工姓名及重複次數
SELECT name, COUNT(*) FROM employees GROUP BY name HAVING COUNT(*) > 1;
```
- **SELECT name, COUNT(\*)**: 選擇員工姓名和計算每個姓名的出現次數。
- **FROM employees**: 指定要查詢的資料表。
- **GROUP BY name**: 按照 `name` 欄位將員工分組。
- **HAVING COUNT(\*) > 1**: 篩選出那些分組後 `COUNT(*)` (即該姓名的出現次數) 大於 1 的分組。

---

# 二、Java 筆試程式實作題精選

## 常見題型
- 印出各種圖案（靠左/靠右/等腰三角形、菱形、金字塔等）
- 九九乘法表
- 判斷質數（Prime Number）
- 費式數列（Fibonacci Sequence）
- 回文判斷（Palindrome）
- 字串反轉（String Reversal）
- 陣列最大最小值
- 氣泡排序（Bubble Sort）或其他簡單排序演算法
- 無暫存變數交換兩數
- 階乘計算（Factorial）
- 阿姆斯壯數判斷（Armstrong Number）

## 範例題目：印出靠左直角三角形
### 題目描述：
請撰寫一段 Java 程式，輸入整數 n，印出對應高度的靠左直角三角形。

### Java 程式碼：
```java
import java.util.Scanner;

public class LeftTriangle {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    System.out.print("請輸入三角形高度 n: ");
    int n = scanner.nextInt();

    for (int i = 1; i <= n; i++) { // 外層迴圈控制行數 (從第1行到第n行)
      for (int j = 1; j <= i; j++) { // 內層迴圈控制每行星號數量 (第i行有i個星號)
        System.out.print("*");
      }
      System.out.println(); // 每行印完後換行
    }
    scanner.close();
  }
}
```

### 重點解析：
- **巢狀迴圈**: 外層迴圈控制總行數，內層迴圈控制當前行要印出的字元數量。
- **迴圈條件**: 外層迴圈變數 `i` 從 1 到 `n`。內層迴圈變數 `j` 從 1 到 `i`，確保第 `i` 行印出 `i` 個星號。
- **輸出**: `System.out.print("*")` 印出星號但不換行，`System.out.println()` 在每行結束後換行。
- **常考基本控制結構與排版邏輯**: 熟悉 `for` 迴圈、`while` 迴圈以及如何控制輸出格式是基本要求。

---

# 三、Java 核心觀念速讀

## OOP 四大特性
- **封裝（Encapsulation）**: 將資料（屬性）和操作資料的方法捆綁在一個單元（類別）中，並隱藏內部實作細節，只透過公共介面提供受控的存取。好處是保護資料、降低耦合度、易於維護。
- **繼承（Inheritance）**: 允許一個類別（子類/派生類）從另一個類別（父類/基類）繼承屬性和方法，實現程式碼重用和擴展。使用 `extends` 關鍵字。Java 不支援多重繼承類別，但可以實現多個介面。
- **多型（Polymorphism）**: 允許不同類型的物件對同一個方法呼叫作出不同的響應。主要體現為：
    - **方法重載 (Method Overloading)**: 在同一個類別中，多個方法有相同名稱但參數列表不同。
    - **方法重寫 (Method Overriding)**: 子類別重新定義父類別中同名、同參數列表、同回傳類型的方法。
- **抽象（Abstraction）**: 隱藏複雜的實作細節，只向外部暴露必要的功能或介面。可以通過抽象類別 (Abstract Class) 和介面 (Interface) 來實現。

## 核心語法與觀念
- **static**:
    - 修飾屬性：類別變數，所有物件共享同一個副本。
    - 修飾方法：類別方法，可以直接通過類別名稱呼叫，不能直接存取非 static 的實例成員。
    - 修飾區塊：靜態初始化區塊，在類別載入時執行一次。
- **final**:
    - 修飾變數：變數的值一旦被賦予後就不能再改變（常量）。
    - 修飾方法：該方法不能被子類重寫。
    - 修飾類別：該類別不能被繼承。
- **this**: 指向當前物件自身的引用。
    - 用於區分實例變數和局部變數 (當同名時)。
    - 用於在建構子內部呼叫同類別的其他建構子 (`this(...)`)。
- **super**: 指向當前物件的直接父類別物件的引用。
    - 用於存取父類別的成員 (屬性或方法)。
    - 用於在子類建構子中呼叫父類別的建構子 (`super(...)`)。
- **建構子 overloading**: 在同一個類別中定義多個建構子，它們有不同的參數列表。
- **介面（interface）與抽象類別（abstract class）**:
    - **介面**: 使用 `interface` 定義，不能被實例化，只能被類別實現 (`implements`)。在 Java 8 之前只包含常量和抽象方法；Java 8 後可包含 default, static 方法；Java 9 後可包含 private 方法。主要用於定義契約、實現多重繼承的效果。
    - **抽象類別**: 使用 `abstract class` 定義，不能被實例化，只能被子類繼承 (`extends`)。可以包含抽象方法（無實作）和具體方法（有實作），可以有實例變數、建構子。主要用於定義共同屬性和行為的基類，並要求子類必須實現某些特定行為。
- **Garbage Collection（GC）與記憶體堆疊模型**:
    - **記憶體區域**: JVM 主要有 Heap（堆）、Stack（棧）、Method Area（方法區）、Program Counter Register（程式計數器）。
    - **Heap**: 物件實例和陣列主要在此分配記憶體。GC 主要在此工作。分為 Young Gen（新生代）、Old Gen（老年代），有時還有 Metaspace（元空間）。
    - **Stack**: 儲存方法呼叫的幀，每個幀包含局部變數、運算元堆疊等。基本資料類型和物件引用儲存在棧上。
    - **GC**: 自動記憶體管理過程，識別和回收不再被引用的物件佔用的 Heap 記憶體。
    - **可達性分析**: GC 判斷物件是否存活的方法，從 GC Roots（如執行緒棧變數、靜態變數）開始追蹤，不可達的物件即被回收。
    - **GC 演算法**: 常見有 Mark-Sweep（標記-清除）、Copying（複製）、Mark-Compact（標記-整理）、Generational GC（分代回收）等。

---

# 四、JavaScript 語法與陷阱

## 常見語法
- **變數宣告**:
    - `var`: 函數作用域，存在 Hoisting（提升）問題，可重複宣告。
    - `let`: 塊級作用域，不存在 Hoisting，不可重複宣告，可重新賦值。
    - `const`: 塊級作用域，不存在 Hoisting，不可重複宣告，宣告時必須賦值且之後不能重新賦值（對於物件和陣列，其*引用*不能改變，但內部成員可變）。
- **條件語法**:
    - `if / else if / else`: 基本條件判斷。
    - **三元運算子**: `condition ? expression_if_true : expression_if_false;` (簡潔的條件賦值或返回)。
    - `switch-case`: 適用於基於單個變數的多重分支判斷。
- **迴圈**:
    - `for`: 經典計數迴圈。
    - `for...in`: 遍歷物件的可枚舉屬性（包括繼承的屬性，不推薦用於陣列）。
    - `for...of`: 遍歷可迭代對象的值（如陣列、字串、Map、Set 等）。
    - `while`: 當條件為真時重複執行程式碼塊。
    - `do...while`: 執行一次程式碼塊，然後當條件為真時重複執行。

## 非同步與 Promise
- JavaScript 是單執行緒的，但通過事件迴圈（Event Loop）處理非同步操作。
- **Callback**: 處理非同步的早期方式，容易導致「Callback Hell」（回呼地獄）。
- **Promise**: 解決 Callback Hell 的方案，表示一個非同步操作的最終完成（或失敗）及其結果值。有 `pending`, `fulfilled`, `rejected` 三種狀態。使用 `.then()` 和 `.catch()` 處理結果。
- **Async/Await**: 基於 Promise 的語法糖，讓非同步程式碼看起來更像同步程式碼，提高了可讀性和可維護性。
```js
// 使用 async/await 處理非同步操作
async function loadData() {
  try {
    // await 等待 Promise resolve
    const res = await fetch('/api/data'); // fetch 返回 Promise
    if (!res.ok) { // 檢查 HTTP 狀態碼
      throw new Error(`HTTP error! status: ${res.status}`);
    }
    const json = await res.json(); // res.json() 返回 Promise
    console.log(json);
    return json;
  } catch (error) {
    console.error("讀取資料失敗:", error);
    throw error; // 重新拋出錯誤或處理
  }
}

// 呼叫 async 函式
loadData()
  .then(data => console.log("資料載入成功:", data))
  .catch(err => console.log("載入資料時發生錯誤:", err));
```
- **fetch**: 常用的 Web API，用於發起網路請求，返回一個 Promise。

## 易錯陷阱
- **== vs === 差異**:
    - `==` (相等運算子): 比較時會進行類型轉換（強制轉型）。例如 `5 == '5'` 為 `true`。
    - `===` (嚴格相等運算子): 比較時**不會**進行類型轉換，要求值和類型都嚴格相等。例如 `5 === '5'` 為 `false`。推薦優先使用 `===` 避免意外的類型轉換問題。
- **Hoisting（提升機制）**: 使用 `var` 宣告的變數和函式宣告在程式碼執行前會被「提升」到其作用域的頂部。`let` 和 `const` 不存在變數提升，但存在「暫時性死區」（Temporal Dead Zone, TDZ）。
    ```js
    console.log(a); // undefined (a 被提升，但值未初始化)
    var a = 10;

    // console.log(b); // ReferenceError: Cannot access 'b' before initialization (b 在 TDZ 中)
    // let b = 20;
    ```
- **this 的指向變化（函式 vs 箭頭函式）**: `this` 的值取決於函式如何被呼叫。
    - **一般函式**: `this` 通常指向呼叫該函式的物件。在嚴格模式下，獨立呼叫的函式 `this` 為 `undefined`；非嚴格模式下為全域物件 (`window` 或 `global`)。物件方法中的 `this` 指向該物件。
    - **箭頭函式 (`=>`)**: 箭頭函式沒有自己的 `this` 綁定。它的 `this` 會繼承其「外層（定義時的）作用域」的 `this` 值。這使得處理回呼函式中的 `this` 更加方便，避免了使用 `bind()`, `call()`, `apply()` 或將 `this` 賦給另一個變數（如 `that = this`）。

---

# 五、資料庫設計與正規化實務

## 正規化階段
- **1NF (第一正規化)**:
    - 每個欄位都是原子的（不可再分割）。
    - 表格中的所有行都是唯一的（存在主鍵）。
    - 沒有重複的欄位或多值欄位。
- **2NF (第二正規化)**:
    - 滿足 1NF。
    - 所有**非主鍵**欄位必須完全依賴於**整個主鍵**（如果主鍵是複合鍵）。如果複合主鍵中的部分欄位就能決定某非主鍵欄位，則違反 2NF。
- **3NF (第三正規化)**:
    - 滿足 2NF。
    - 所有**非主鍵**欄位之間不能存在傳遞依賴（Transitive Dependency）。也就是說，非主鍵欄位不能依賴於另一個非主鍵欄位。

## 設計情境題
### 題目：設計會員、訂單、商品的資料表（一個簡易的電商系統）
需要記錄會員資訊、會員下的訂單、訂單中包含哪些商品以及數量。

### 資料表設計範例：
- **users** (會員)
    - `user_id` (主鍵 Primary Key)
    - `username`
    - `email`
    - `password_hash`
    - `registration_date`
- **products** (商品)
    - `product_id` (主鍵 Primary Key)
    - `product_name`
    - `price`
    - `stock`
- **orders** (訂單)
    - `order_id` (主鍵 Primary Key)
    - `user_id` (外鍵 Foreign Key 參考 users 表的 user_id)
    - `order_date`
    - `total_amount`
    - `status` (如 'Pending', 'Shipped', 'Completed')
- **order_items** (訂單明細)
    - `order_item_id` (主鍵 Primary Key，或者使用複合主鍵 `(order_id, product_id)`)
    - `order_id` (外鍵 Foreign Key 參考 orders 表的 order_id)
    - `product_id` (外鍵 Foreign Key 參考 products 表的 product_id)
    - `quantity` (購買數量)
    - `price_per_item` (購買時單價，可能與 products 表當前價格不同)

### 關聯方式
- **users 1對多 orders**: 一個會員可以下多個訂單 (orders 表中的 `user_id` 參考 users 表)。
- **orders 多對多 products**: 一個訂單可以包含多個商品，同一個商品也可以在不同的訂單中。這種多對多關係需要通過一個中間表（通常稱為連接表或樞紐表）來解決。在此範例中，**order_items** 表就是中間表。它通過 `order_id` 與 orders 表關聯 (多對一)，通過 `product_id` 與 products 表關聯 (多對一)。從 order_items 的角度看，多個訂單明細可以屬於同一個訂單，多個訂單明細可以對應同一個商品。

### 正規化考量：
- 上述設計基本滿足 3NF。例如，在 `order_items` 表中，`quantity` 和 `price_per_item` 都完全依賴於複合主鍵 `(order_id, product_id)`，且它們之間沒有傳遞依賴。`orders` 表中的 `total_amount` 可以計算得出，嚴格來說它是一個冗餘（可能違反 3NF 或更高範式），但實務中常為了查詢效率而保留（反正規化）。

---