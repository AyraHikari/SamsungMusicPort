.class public Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/database/Cursor;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/database/Cursor;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->c:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->b:Landroid/database/Cursor;

    return-void
.end method

.method private a(JI)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->a:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>()V

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->projection:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    const-string p3, "@"

    .line 79
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 5

    .line 37
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->projection:[Ljava/lang/String;

    .line 38
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 49
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 51
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/util/ListUtils;->b(J)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->a(JI)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->b:Landroid/database/Cursor;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 61
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 63
    iget-object v4, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->b:Landroid/database/Cursor;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    :cond_2
    :goto_2
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1
.end method

.method public a(J)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->c:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
