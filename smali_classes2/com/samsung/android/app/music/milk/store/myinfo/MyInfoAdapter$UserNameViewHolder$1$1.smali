.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "953"

    const-string v2, "9521"

    .line 476
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isPremiumUser()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Premium"

    goto :goto_0

    :cond_0
    const-string p1, "Normal"

    .line 473
    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
