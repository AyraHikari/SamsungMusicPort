.class public Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->a()V

    .line 18
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->selection:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->uri:Landroid/net/Uri;

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->selection:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->b()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->projection:[Ljava/lang/String;

    const-string v0, "expiryDateLocal desc"

    .line 31
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->orderBy:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;->b()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->uri:Landroid/net/Uri;

    return-void
.end method

.method private b()[Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "voucherId"

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "voucherCode"

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "voucherTitle"

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "voucherDesc"

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "startDateLocal"

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "expiryDateLocal"

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "periodType"

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "statusCode"

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "read"

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "voucherType"

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "productId"

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "pricingTypeCode"

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "periodValue"

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "periodType"

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
