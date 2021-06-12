.class Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 2

    const-string v0, "MyInfo_MyInfoDataController | "

    const-string v1, "onUserInfoChanged"

    .line 102
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 2

    const-string v0, "MyInfo_MyInfoDataController | "

    const-string v1, "onUserFeatureChanged"

    .line 110
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method
