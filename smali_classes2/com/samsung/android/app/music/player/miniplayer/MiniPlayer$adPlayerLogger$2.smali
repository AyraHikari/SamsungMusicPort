.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$adPlayerLogger$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;-><init>(Landroid/support/v7/app/AppCompatActivity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$adPlayerLogger$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$adPlayerLogger$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$adPlayerLogger$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$adPlayerLogger$2;->INSTANCE:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$adPlayerLogger$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 1

    .line 46
    invoke-static {}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->b()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$adPlayerLogger$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    return-object v0
.end method
