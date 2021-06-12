.class final Lcom/samsung/android/app/music/player/SeekController$UiUpdater$debugUiUpdater$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SeekController$UiUpdater;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$debugUiUpdater$2;->this$0:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$debugUiUpdater$2;->invoke()Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object v0

    return-object v0
.end method
