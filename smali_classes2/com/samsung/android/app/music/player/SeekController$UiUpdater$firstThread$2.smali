.class final Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThread$2;
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
        "Landroid/os/HandlerThread;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThread$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThread$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThread$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThread$2;->INSTANCE:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThread$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/HandlerThread;
    .locals 2

    .line 368
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "first_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThread$2;->invoke()Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method
