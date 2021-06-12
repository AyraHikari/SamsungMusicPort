.class Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const-string v0, "MyInfo_MyInfoDataController | "

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onLoadFinished() | id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " | count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 146
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Landroid/database/Cursor;)V

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    .line 152
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "MyInfo_MyInfoDataController | "

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished unread voucher : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(Z)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;)V

    goto :goto_1

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(Z)V

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;)V

    goto :goto_1

    :cond_3
    const-string p1, "MyInfo_MyInfoDataController | "

    const-string p2, "onCreateLoader >> unexpected loader id "

    .line 163
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 120
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;-><init>()V

    const-string p2, "orderStatus"

    const-string v0, "02"

    .line 121
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->a()Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;

    move-result-object p1

    .line 124
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;->selection:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 132
    new-instance p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;->a()Landroid/net/Uri;

    move-result-object p2

    const-string v0, "( statusCode == \'01\' and read == \'1\' )"

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 133
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->selection:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherQueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const-string p2, "MyInfo_MyInfoDataController | "

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateLoader >> unexpected loader id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
