.class Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b()V
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

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->c(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method
