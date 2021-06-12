.class Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;->a(I)V

    :cond_0
    return-void
.end method
