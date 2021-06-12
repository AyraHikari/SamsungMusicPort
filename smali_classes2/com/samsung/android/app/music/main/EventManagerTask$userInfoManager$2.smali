.class final Lcom/samsung/android/app/music/main/EventManagerTask$userInfoManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/EventManagerTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/main/EventManagerTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$userInfoManager$2;->this$0:Lcom/samsung/android/app/music/main/EventManagerTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$userInfoManager$2;->this$0:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/EventManagerTask;->b(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/EventManagerTask$userInfoManager$2;->invoke()Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    return-object v0
.end method
