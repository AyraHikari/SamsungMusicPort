.class Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->hideNotification()V
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

    .line 1055
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFadeFinished(F)V
    .locals 0

    .line 1058
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    return-void
.end method
