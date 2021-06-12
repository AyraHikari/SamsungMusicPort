.class public final Lcom/samsung/android/app/music/main/EventManagerTask$mUserInfoCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/EventManagerTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/EventManagerTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$mUserInfoCallback$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "EventManager"

    const-string v0, "mUserInfoCallback | onUserInfoChanged()"

    .line 101
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$mUserInfoCallback$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->g(Lcom/samsung/android/app/music/main/EventManagerTask;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$mUserInfoCallback$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a()V

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$mUserInfoCallback$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/main/EventManagerTask;->c(Lcom/samsung/android/app/music/main/EventManagerTask;Z)V

    :cond_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
