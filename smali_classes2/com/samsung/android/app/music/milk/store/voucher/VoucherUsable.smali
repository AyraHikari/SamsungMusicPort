.class public abstract Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Landroid/content/Context;

.field protected final c:Landroid/support/v4/app/Fragment;

.field protected final d:I

.field protected final e:J

.field protected final f:Ljava/lang/String;

.field protected final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/database/Cursor;J)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VoucherUsable"

    .line 21
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->b:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->c:Landroid/support/v4/app/Fragment;

    const-string p1, "voucherTitle"

    .line 50
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->f:Ljava/lang/String;

    const-string p1, "read"

    .line 51
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->d:I

    .line 52
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->g:Ljava/lang/String;

    .line 53
    iput-wide p3, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->e:J

    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd"

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v2, "periodValue"

    .line 89
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "periodType"

    .line 91
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "M"

    .line 93
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x2

    .line 94
    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    const-string v3, "D"

    .line 95
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x5

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    const-string p1, "VoucherUsable"

    const-string v2, "clickVoucher voucher dont\' have period type"

    .line 98
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1e

    .line 99
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 102
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VoucherUsable"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalExpiryDate voucher valid date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Landroid/support/v4/app/Fragment;Landroid/database/Cursor;J)V
    .locals 2

    const-string v0, "voucherType"

    .line 38
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;-><init>(Landroid/support/v4/app/Fragment;Landroid/database/Cursor;J)V

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/voucher/BillingVoucherUsable;-><init>(Landroid/support/v4/app/Fragment;Landroid/database/Cursor;J)V

    .line 44
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->b()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(I)V
.end method

.method protected b()V
    .locals 5

    const-string v0, "VoucherUsable"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "useVouher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->d:I

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoucherUsable"

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useVouher read selection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "read"

    const/4 v3, 0x0

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->b:Landroid/content/Context;

    .line 66
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;->a()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    .line 65
    invoke-static {v2, v3, v1, v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->a()V

    return-void
.end method

.method protected c()V
    .locals 3

    const-string v0, "VoucherUsable"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "completeUseVoucher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method
