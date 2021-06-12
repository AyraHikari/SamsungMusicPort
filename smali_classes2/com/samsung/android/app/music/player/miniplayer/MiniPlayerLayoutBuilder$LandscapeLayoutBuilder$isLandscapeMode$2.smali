.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$isLandscapeMode$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$isLandscapeMode$2;->this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$isLandscapeMode$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$isLandscapeMode$2;->this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
