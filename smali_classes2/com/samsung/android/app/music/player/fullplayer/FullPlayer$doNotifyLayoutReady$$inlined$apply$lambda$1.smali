.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$doNotifyLayoutReady$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$doNotifyLayoutReady$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 37
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 175
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$doNotifyLayoutReady$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    return-void
.end method
