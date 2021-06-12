.class final Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat$isDesktopMode$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;)V
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
.field final synthetic this$0:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat$isDesktopMode$2;->this$0:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat$isDesktopMode$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat$isDesktopMode$2;->this$0:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
