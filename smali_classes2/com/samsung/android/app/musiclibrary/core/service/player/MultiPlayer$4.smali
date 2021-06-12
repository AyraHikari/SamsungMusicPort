.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->ignoreNoisyIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1169
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1402(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Z)Z

    return-void
.end method
