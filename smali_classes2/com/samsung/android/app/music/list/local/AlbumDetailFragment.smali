.class public final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;,
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailCursorLoader;,
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailThumbnailPublisher;,
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;,
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;,
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<",
        "Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private d:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

.field private e:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;

.field private final f:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "albumId"

    const-string v4, "getAlbumId()J"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 79
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$albumId$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$albumId$2;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->c:Lkotlin/Lazy;

    .line 93
    new-instance v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->d:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    if-nez p0, :cond_0

    const-string v0, "transitionHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final a(JLjava/lang/String;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
    .locals 7

    sget-object v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-wide v1, p0

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;->a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-result-object p0

    return-object p0
.end method

.method private final a(Landroid/support/design/widget/AppBarLayout;Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/AppBarLayout;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroid/support/design/widget/AppBarLayout;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 276
    new-instance v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$doOnOffsetChanged$1;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$doOnOffsetChanged$1;-><init>(Lkotlin/jvm/functions/Function4;)V

    check-cast v0, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->e:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;

    return-object p0
.end method

.method private final f()J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->c()Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 235
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 237
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Landroid/database/Cursor;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "album"

    .line 241
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 243
    :cond_1
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 261
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    const/16 v1, 0x66

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->a(Z)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->e:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;

    if-eqz v0, :cond_4

    const-string v1, "music_album_artist"

    .line 471
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "year_name"

    .line 472
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x65

    .line 251
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 252
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->c()Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->c(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->d()Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->e()Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {p1, v3, v4}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 208
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;
    .locals 2

    .line 193
    new-instance v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 194
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "artist"

    .line 195
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "duration"

    .line 196
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 197
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const-string v1, "track"

    .line 198
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 199
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 200
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x100002

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "205"

    const-string v0, "206"

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    new-instance p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->d:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 270
    new-instance v6, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f140008

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_0

    .line 271
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance p2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailCursorLoader;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    check-cast p2, Landroid/support/v4/content/Loader;

    return-object p2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    const v3, 0x7f14001e

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 266
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p2, "activity!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f04000f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;ZILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v2, 0x7f130138

    .line 117
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 118
    new-instance v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;

    const v3, 0x7f13013a

    .line 120
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "infoView.findViewById(R.id.thumbnail)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Landroid/widget/ImageView;

    const v3, 0x7f130070

    .line 121
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v6, "infoView.findViewById(R.id.title)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, Landroid/widget/TextView;

    const v3, 0x7f13013b

    .line 122
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v7, "infoView.findViewById(R.id.artist_name)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v3

    check-cast v7, Landroid/widget/TextView;

    const v3, 0x7f13013c

    .line 123
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v8, "infoView.findViewById(R.id.album_info)"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    move-object v3, v2

    .line 118
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v2, v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->e:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;

    .line 125
    new-instance v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailThumbnailPublisher;

    .line 126
    iget-object v3, v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->e:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->b()Landroid/widget/ImageView;

    move-result-object v3

    .line 127
    sget v4, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    .line 125
    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailThumbnailPublisher;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;Landroid/widget/ImageView;I)V

    const v3, 0x7f1000b6

    .line 129
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v3

    .line 130
    sget-object v4, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->a:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->f()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v3

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    .line 133
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    .line 134
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 136
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->c(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v7

    if-eqz v7, :cond_2

    const v8, 0x7f13013f

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    move-object v7, v4

    :goto_0
    if-eqz v7, :cond_4

    .line 140
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b(Z)V

    .line 141
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 142
    :cond_3
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 144
    :cond_4
    iget-object v8, v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->e:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;

    if-eqz v8, :cond_5

    .line 145
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b(Z)V

    .line 146
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto :goto_1

    .line 149
    :cond_5
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b(Z)V

    .line 150
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 151
    :cond_6
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    const v2, 0x7f130136

    .line 155
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_8

    .line 156
    new-instance v6, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$onViewCreated$$inlined$run$lambda$1;

    invoke-direct {v6, v7, v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$onViewCreated$$inlined$run$lambda$1;-><init>(Landroid/widget/TextView;Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;Landroid/view/View;)V

    check-cast v6, Lkotlin/jvm/functions/Function4;

    invoke-direct {v0, v2, v6}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Landroid/support/design/widget/AppBarLayout;Lkotlin/jvm/functions/Function4;)V

    .line 162
    :cond_8
    invoke-static {v0, v5, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 164
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 167
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    const-string v6, "activity!!"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    const v6, 0x7f0b0350

    invoke-direct {v1, v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 168
    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->b_(I)V

    .line 169
    new-instance v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$ActionModeOptionsMenu;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 170
    new-instance v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v1, v7}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 172
    new-instance v1, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    move-object v2, v0

    check-cast v2, Landroid/support/v4/app/Fragment;

    const v10, 0x7f0d0028

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xc

    const/4 v14, 0x0

    move-object v8, v1

    move-object v9, v2

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 173
    new-instance v1, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 174
    new-instance v1, Lcom/samsung/android/app/music/list/ListShareableImpl;

    const/4 v13, 0x2

    invoke-direct {v1, v2, v5, v13, v4}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 175
    new-instance v1, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    new-instance v6, Lcom/samsung/android/app/music/list/favorite/LocalCategory;

    const v15, 0x10002

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->h()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v14, v6

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;-><init>(ILjava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/samsung/android/app/music/list/favorite/Category;

    invoke-direct {v1, v2, v6}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v8, 0x7f020220

    invoke-direct {v6, v8, v4, v13, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 179
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, v7}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 180
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 181
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 182
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v1

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    const/4 v6, -0x5

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 186
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v8, 0x7f0b02c4

    const v2, 0x7f0b02b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 188
    invoke-virtual {v0, v5, v3}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(ZI)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->g()I

    move-result v1

    invoke-static {v0, v1, v4, v13, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 204
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
