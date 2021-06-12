.class public final Lcom/samsung/android/app/music/main/MyMusicTabFragment$showSpotifyTip$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$showSpotifyTip$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

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

    .line 177
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$showSpotifyTip$$inlined$doOnLayout$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->b(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a()V

    return-void
.end method
