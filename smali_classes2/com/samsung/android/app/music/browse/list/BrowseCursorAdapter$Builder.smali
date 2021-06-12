.class public Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    const p1, 0x7f040178

    .line 200
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a:I

    .line 205
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->c:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;)I
    .locals 0

    .line 198
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a:I

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;)Landroid/util/SparseArray;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->c:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;)Ljava/lang/String;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public a(I)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 217
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a:I

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 212
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->b:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 235
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->b()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
