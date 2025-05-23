codeunit 50253 SalesSetup
{
    // Procedure to insert a new sales price for a specific customer and item
    procedure InsertSalesPriceForCustomer(CustomerNo: Code[20]; ItemNo: Code[20]; Price: Decimal)
    var
        SalesPrice: Record "Sales Price";
    begin
        SalesPrice.Init(); // Initializes a new Sales Price record
        SalesPrice.Validate("Sales Type", SalesPrice."Sales Type"::Customer); // Sets the sales type to 'Customer'
        SalesPrice.Validate("Sales Code", CustomerNo); // Sets the sales code (customer number)
        SalesPrice.Validate("Item No.", ItemNo); // Sets the item number
        SalesPrice.Validate("Unit Price", Price); // Sets the unit price for the item
        SalesPrice.Validate("Minimum Quantity", 1); // Sets the minimum quantity to 1
        SalesPrice.Validate("Starting Date", Today); // Sets the starting date to today
        SalesPrice.Insert(); // Inserts the record into the "Sales Price" table
    end;

    // Procedure to insert a new line discount for a specific customer and item
    procedure InsertLineDiscountForCustomer(CustomerNo: Code[20]; ItemNo: Code[20]; MinQty: Decimal; DiscountPercent: Decimal)
    var
        LineDiscount: Record "Sales Line Discount";
    begin
        LineDiscount.Init(); // Initializes a new Sales Line Discount record
        LineDiscount.Validate("Sales Type", LineDiscount."Sales Type"::Customer); // Sets the sales type to 'Customer'
        LineDiscount.Validate("Sales Code", CustomerNo); // Sets the sales code (customer number)
        // LineDiscount.Validate("Item No.", ItemNo); // This line is commented out; typically, it would set the item number
        LineDiscount.Validate("Minimum Quantity", MinQty); // Sets the minimum quantity required for the discount
        LineDiscount.Validate("Line Discount %", DiscountPercent); // Sets the discount percentage
        LineDiscount.Validate("Starting Date", Today); // Sets the starting date to today
        LineDiscount.Insert(); // Inserts the record into the "Sales Line Discount" table
    end;
}
