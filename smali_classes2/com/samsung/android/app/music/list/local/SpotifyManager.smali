.class public final Lcom/samsung/android/app/music/list/local/SpotifyManager;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;,
        Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;,
        Lcom/samsung/android/app/music/list/local/SpotifyManager$SpotifyResizableHeightItem;,
        Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;,
        Lcom/samsung/android/app/music/list/local/SpotifyManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/SpotifyManager$Companion;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Lcom/samsung/android/app/music/network/NetworkManager;

.field private final f:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final g:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Landroid/view/View;

.field private final k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private final l:Landroid/view/View;

.field private final m:Landroid/view/View;

.field private final n:Landroid/widget/TextView;

.field private final o:Landroid/widget/TextView;

.field private final p:Landroid/view/View;

.field private final q:Landroid/widget/TextView;

.field private final r:Landroid/view/View;

.field private final s:Landroid/widget/PopupMenu;

.field private final t:Lkotlin/properties/ReadWriteProperty;

.field private final u:Lkotlin/properties/ReadWriteProperty;

.field private v:Z

.field private final w:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "queryArgs"

    const-string v4, "getQueryArgs()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "analytics"

    const-string v4, "getAnalytics()Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "networkState"

    const-string v4, "getNetworkState()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "loading"

    const-string v4, "getLoading()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->b:Lcom/samsung/android/app/music/list/local/SpotifyManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 5

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1152
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    .line 1155
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c:Landroid/content/Context;

    .line 1156
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    check-cast p1, Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->d:Landroid/content/SharedPreferences;

    .line 1157
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v2, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez v2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 1158
    new-instance p1, Lcom/samsung/android/app/music/list/local/SpotifyManager$networkStateChangedListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$networkStateChangedListener$1;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->f:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 1161
    new-instance p1, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v3, "fragment.activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    invoke-direct {p1, p0, v2}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->g:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    .line 1162
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v2, Lcom/samsung/android/app/music/list/local/SpotifyManager$queryArgs$2;->INSTANCE:Lcom/samsung/android/app/music/list/local/SpotifyManager$queryArgs$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->h:Lkotlin/Lazy;

    .line 1165
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/samsung/android/app/music/list/local/SpotifyManager$analytics$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$analytics$2;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->i:Lkotlin/Lazy;

    .line 1168
    new-instance p1, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    const v3, 0x7f0400bc

    invoke-direct {p1, v2, v3}, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;->a()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->j:Landroid/view/View;

    .line 1169
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->j:Landroid/view/View;

    const v2, 0x7f130150

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "rootView.findViewById(R.id.recycler_view)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 1170
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->j:Landroid/view/View;

    const v2, 0x7f130126

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->l:Landroid/view/View;

    .line 1171
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->j:Landroid/view/View;

    const v2, 0x7f130320

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->m:Landroid/view/View;

    .line 1172
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->j:Landroid/view/View;

    const v2, 0x7f130189

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->n:Landroid/widget/TextView;

    .line 1173
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->j:Landroid/view/View;

    const v2, 0x7f13018a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->o:Landroid/widget/TextView;

    .line 1174
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->j:Landroid/view/View;

    const v2, 0x7f130578

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->p:Landroid/view/View;

    .line 1175
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->p:Landroid/view/View;

    const v2, 0x7f13006b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->q:Landroid/widget/TextView;

    .line 1176
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->j:Landroid/view/View;

    const v2, 0x7f130043

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1177
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f0b0269

    invoke-static {v2, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 1176
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->r:Landroid/view/View;

    .line 1179
    new-instance p1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->r:Landroid/view/View;

    const v4, 0x800003

    invoke-direct {p1, v2, v3, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 1180
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f140018

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1179
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->s:Landroid/widget/PopupMenu;

    .line 1183
    sget-object p1, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    .line 1184
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/HeartFragmentKt;->a(Lcom/samsung/android/app/music/network/NetworkManager;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1775
    new-instance v2, Lcom/samsung/android/app/music/list/local/SpotifyManager$$special$$inlined$observable$1;

    invoke-direct {v2, p1, p1, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    check-cast v2, Lkotlin/properties/ReadWriteProperty;

    .line 1777
    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->t:Lkotlin/properties/ReadWriteProperty;

    .line 1191
    sget-object p1, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1778
    new-instance v2, Lcom/samsung/android/app/music/list/local/SpotifyManager$$special$$inlined$observable$2;

    invoke-direct {v2, p1, p1, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    check-cast v2, Lkotlin/properties/ReadWriteProperty;

    .line 1780
    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->u:Lkotlin/properties/ReadWriteProperty;

    .line 1218
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1219
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->g:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    check-cast v2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1220
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 1221
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v2, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 1222
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setOverScrollMode(I)V

    .line 1223
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->b(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 1225
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->r:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/list/local/SpotifyManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$1;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1229
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->r:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/list/local/SpotifyManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$2;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1236
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->s:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/samsung/android/app/music/list/local/SpotifyManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$3;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    check-cast v1, Landroid/widget/PopupMenu$OnDismissListener;

    invoke-virtual {p1, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1237
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->s:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/samsung/android/app/music/list/local/SpotifyManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$4;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    check-cast v1, Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1262
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/music/list/local/SpotifyManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$5;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1279
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 1280
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    const/16 v1, -0x3f1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->j:Landroid/view/View;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(ILandroid/view/View;)V

    .line 1281
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpotifyResizableHeightItem;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpotifyResizableHeightItem;-><init>()V

    check-cast v1, Lcom/samsung/android/app/music/list/ResizableHeightItem;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/list/ResizableHeightItemKt;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/ResizableHeightItem;)V

    .line 1282
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    const/16 v1, 0x7c2

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method private final a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object p0
.end method

.method private final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->t:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/SpotifyManager;I)V
    .locals 0

    .line 1152
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/SpotifyManager;Z)V
    .locals 0

    .line 1152
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->v:Z

    return-void
.end method

.method private final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->u:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final b()Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;
    .locals 0

    .line 1152
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->b()Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;

    move-result-object p0

    return-object p0
.end method

.method private final c()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->t:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/HeartFragment;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Landroid/view/View;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->j:Landroid/view/View;

    return-object p0
.end method

.method private final d()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->u:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Landroid/widget/PopupMenu;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->s:Landroid/widget/PopupMenu;

    return-object p0
.end method

.method private final e()Z
    .locals 8

    .line 1200
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->d:Landroid/content/SharedPreferences;

    const-string v1, "heart_chart_hide"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    .line 1202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const v0, 0x36ee80

    int-to-long v0, v0

    div-long/2addr v6, v0

    const/16 v0, 0x18

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1203
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->d:Landroid/content/SharedPreferences;

    .line 1754
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "editor"

    .line 1755
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "heart_chart_hide"

    .line 1204
    invoke-interface {v1, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1756
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1207
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c:Landroid/content/Context;

    const v2, 0x10100

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;I)Z

    move-result v1

    .line 1208
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->d:Landroid/content/SharedPreferences;

    const-string v3, "heart_chart_do_not_show_again"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object p0
.end method

.method private final f()V
    .locals 2

    .line 1352
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1353
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    return-void

    .line 1354
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Z)V

    return-void
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/list/local/SpotifyManager;)I
    .locals 0

    .line 1152
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c()I

    move-result p0

    return p0
.end method

.method private final g()V
    .locals 4

    .line 1358
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1361
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 1362
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->l:Landroid/view/View;

    const-string v3, "progressBar"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 1364
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->p:Landroid/view/View;

    const-string v1, "titleContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->m:Landroid/view/View;

    const-string v1, "noNetworkContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1367
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 1368
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->l:Landroid/view/View;

    const-string v3, "progressBar"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 1370
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->p:Landroid/view/View;

    const-string v3, "titleContainer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1371
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->m:Landroid/view/View;

    const-string v2, "noNetworkContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1374
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->l:Landroid/view/View;

    const-string v3, "progressBar"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 1376
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->p:Landroid/view/View;

    const-string v3, "titleContainer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->m:Landroid/view/View;

    const-string v1, "noNetworkContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1383
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->n:Landroid/widget/TextView;

    const v1, 0x7f0b03ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1384
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->o:Landroid/widget/TextView;

    const v1, 0x7f0b0262

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1387
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->n:Landroid/widget/TextView;

    const v1, 0x7f0b03af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1388
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->o:Landroid/widget/TextView;

    const v1, 0x7f0b0310

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V
    .locals 0

    .line 1152
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->f()V

    return-void
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V
    .locals 0

    .line 1152
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->g()V

    return-void
.end method

.method public static final synthetic j(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Landroid/content/Context;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic k(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->d:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .line 1394
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 1396
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1397
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->j:Landroid/view/View;

    const v2, 0x7f1302d5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/Group;

    const-string v2, "noItemGroup"

    .line 1398
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/support/constraint/Group;->setVisibility(I)V

    .line 1399
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->g()V

    .line 1401
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->b()Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;->a()V

    const/16 p1, -0x3f1

    .line 1402
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/HeartFragmentKt;->a(I)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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

    .line 1320
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->g:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(Landroid/database/Cursor;)V

    const-string p1, "SpotifyManager"

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadFinished : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 1322
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_2

    .line 1323
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->q:Landroid/widget/TextView;

    const-string v0, "titleTextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chart_name"

    .line 1774
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 1324
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Z)V

    :cond_2
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

    .line 1316
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    check-cast p1, Landroid/support/v4/content/Loader;

    return-object p1
.end method

.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1291
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->f()V

    goto :goto_0

    :cond_0
    const-string p1, "key_menu_show"

    const/4 v0, 0x0

    .line 1293
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1294
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->w:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1758
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1296
    invoke-static {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/HeartFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findLastVisibleItemPosition()I

    move-result p1

    .line 1297
    invoke-static {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-static {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->d(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-lt p1, p2, :cond_2

    .line 1299
    invoke-static {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->e(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    const/4 p1, 0x1

    .line 1300
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager;Z)V

    goto :goto_0

    .line 1762
    :cond_1
    new-instance p2, Lcom/samsung/android/app/music/list/local/SpotifyManager$onFragmentActivityCreated$$inlined$doOnLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$onFragmentActivityCreated$$inlined$doOnLayout$1;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key_menu_show"

    .line 1286
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->v:Z

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1308
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->f:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1312
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->f:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 1152
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 1329
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->g:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ebd70a4    # 0.37f

    .line 1335
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->p:Landroid/view/View;

    const-string v2, "titleContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1336
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->p:Landroid/view/View;

    const-string v2, "titleContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1338
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->r:Landroid/view/View;

    const-string v2, "moreButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1339
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->r:Landroid/view/View;

    const-string v2, "moreButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1341
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->m:Landroid/view/View;

    const-string v2, "noNetworkContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1342
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->m:Landroid/view/View;

    const-string v2, "noNetworkContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1343
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->o:Landroid/widget/TextView;

    const-string v2, "noNetworkSettings"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1345
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAlpha(F)V

    .line 1346
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutFrozen(Z)V

    .line 1348
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager;->g:Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->setViewEnabled(Z)V

    return-void
.end method
