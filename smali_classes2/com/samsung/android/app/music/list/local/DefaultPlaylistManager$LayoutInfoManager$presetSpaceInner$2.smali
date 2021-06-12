.class final Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$presetSpaceInner$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;-><init>(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$presetSpaceInner$2;->this$0:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$presetSpaceInner$2;->this$0:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$presetSpaceInner$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
