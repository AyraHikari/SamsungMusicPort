.class final Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1$getDropDownView$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1$getDropDownView$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;

    iput p2, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1$getDropDownView$$inlined$apply$lambda$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    new-instance p1, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1$getDropDownView$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/SpinnerHelper;->a()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "addTracksOption"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
