.class Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 0

    .line 1077
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$5;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFadeFinished(F)V
    .locals 0

    .line 1080
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$5;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    .line 1081
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$5;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$1300(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    return-void
.end method
