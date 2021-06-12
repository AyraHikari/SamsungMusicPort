.class final Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$zoomScale$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$zoomScale$2;->this$0:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()F
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$zoomScale$2;->this$0:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$zoomScale$2;->this$0:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    iget-object v1, v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1006d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$zoomScale$2;->invoke()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
