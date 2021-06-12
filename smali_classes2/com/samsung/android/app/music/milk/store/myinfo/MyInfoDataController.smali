.class public Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;
    }
.end annotation


# instance fields
.field a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/content/Context;

.field private d:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;

.field private final e:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

.field private final f:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$2;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->e:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    .line 115
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$3;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->f:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b:Landroid/support/v4/app/Fragment;

    .line 63
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->d:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;

    .line 65
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->e:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 9

    if-eqz p1, :cond_2

    .line 208
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    .line 221
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b(Landroid/database/Cursor;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v1, "productTitle"

    .line 223
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 222
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "dueDateLocal"

    .line 225
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 224
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "orderId"

    .line 227
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "1"

    const-string v2, "reserved"

    .line 229
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 231
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "MyInfo_MyInfoDataController | "

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadActiveSubscription() - subscriptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 211
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isPremiumUser()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "MyInfo_MyInfoDataController | "

    const-string v1, "loadActiveSubscription() - Subscription is incompatible with user info"

    .line 212
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->c()V

    .line 239
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(Ljava/util/List;)V

    .line 241
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->d:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Landroid/database/Cursor;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 5

    const-string v0, "MyInfo_MyInfoDataController | "

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAccountInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(I)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isFreeUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(I)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isPremiumUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(I)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isEconomyUser()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(I)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(I)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    const v4, 0x7f0b0256

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(Ljava/lang/String;)V

    .line 195
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isEconomyUser()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 198
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->b(Z)V

    goto :goto_3

    .line 196
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->b(Z)V

    .line 201
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->d:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;)V

    return-void
.end method

.method private b(Landroid/database/Cursor;)I
    .locals 4

    const-string v0, "01"

    const-string v1, "paymentMethodCode"

    .line 312
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f020536

    return p1

    :cond_0
    const-string v0, "1"

    const-string v1, "streamingCode"

    .line 317
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "downloadMaxCount"

    .line 319
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "1"

    const-string v3, "drmProduct"

    .line 322
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f020537

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const p1, 0x7f02053a

    return p1

    :cond_3
    const p1, 0x7f020539

    if-eqz v0, :cond_4

    return p1

    :cond_4
    if-eqz v1, :cond_5

    const p1, 0x7f020538

    return p1

    :cond_5
    const-string v0, "MyInfo_MyInfoDataController | "

    const-string v1, "getIconResource unexpect icon "

    .line 333
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->d:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1

    .line 246
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "MyInfo_MyInfoDataController | "

    const-string v0, "loadUsageStatus"

    .line 247
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object p1

    const/16 v0, 0x582

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->d(I)Lio/reactivex/Observable;

    move-result-object p1

    .line 250
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$4;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)V

    .line 251
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method private c(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 303
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->e:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "MyInfo_MyInfoDataController | "

    const-string v1, "loadData"

    .line 77
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;->a(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->f:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->f:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method
