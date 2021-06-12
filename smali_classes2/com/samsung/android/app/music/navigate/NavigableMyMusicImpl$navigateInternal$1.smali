.class final Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $containerFragment:Landroid/support/v4/app/Fragment;

.field final synthetic $listType:I

.field final synthetic this$0:Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;Landroid/support/v4/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;->this$0:Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;->$containerFragment:Landroid/support/v4/app/Fragment;

    iput p3, p0, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;->$listType:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;->$containerFragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 31
    iget-object v2, p0, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;->this$0:Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;

    iget v3, p0, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;->$listType:I

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;->a(Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;I)I

    move-result v2

    .line 29
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;->selectTab(II)V

    :cond_2
    return-void
.end method
