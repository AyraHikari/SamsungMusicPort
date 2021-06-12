.class public Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;
.super Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/database/Cursor;J)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherUsable;-><init>(Landroid/support/v4/app/Fragment;Landroid/database/Cursor;J)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    const-string v0, "VoucherUsable"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "redeemVoucher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->b:Landroid/content/Context;

    iget-wide v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->e:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis;->b(Landroid/content/Context;J)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 56
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$2;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;)V

    .line 57
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    const v1, 0x7f0b04a0

    .line 34
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->f:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->g:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b04a1

    .line 38
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable$1;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;)V

    const v2, 0x7f0b02d3

    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00cd

    .line 44
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->c(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    .line 45
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "RedeemVoucherUsable"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected a(I)V
    .locals 3

    const-string v0, "VoucherUsable"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "handlingVoucherError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->b:Landroid/content/Context;

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 120
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b025b

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0259

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b01ec

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b025a

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b027e

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/RedeemVoucherUsable;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
