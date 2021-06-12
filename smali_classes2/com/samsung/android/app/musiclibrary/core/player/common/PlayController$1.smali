.class Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->initLazy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->c()V

    return-void
.end method
