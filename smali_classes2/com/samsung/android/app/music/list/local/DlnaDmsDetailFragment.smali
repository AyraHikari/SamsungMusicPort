.class public final Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;,
        Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<",
        "Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$Companion;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;

.field private final f:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;

.field private final i:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$onItemClickListener$1;

.field private final j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->e:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;

    .line 122
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->f:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;

    .line 150
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->i:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$onItemClickListener$1;

    .line 160
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$onItemLongClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$onItemLongClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Ljava/lang/String;J)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c:Z

    return-void
.end method

.method private final a(Ljava/lang/String;J)V
    .locals 2

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    if-nez v0, :cond_2

    .line 320
    sget-object v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->g()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;->a(ILjava/lang/String;J)Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/DialogFragment;

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    sget-object p3, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$Companion;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c:Z

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->l()V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->b:Z

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->d:Z

    return-void
.end method

.method private final f()V
    .locals 3

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.info"

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.error"

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->e:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final i()V
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->e:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final j()V
    .locals 3

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.music.dlna.connectivitychanged"

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->f:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final k()V
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->f:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final l()V
    .locals 3

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 331
    invoke-static {v0}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->a(Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 334
    :cond_2
    sget-object v2, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->a:Ljava/lang/String;

    .line 332
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->d:Z

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
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

    .line 267
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    if-eqz p2, :cond_0

    .line 268
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 269
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->b:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 272
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c(Z)V

    :cond_1
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 282
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/DlnaDmsTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/list/local/query/DlnaDmsTrackQueryArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;
    .locals 2

    .line 260
    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v1, "artist"

    .line 261
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v1, "album_id"

    .line 262
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v1, "_id"

    .line 263
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setRemoteTrack(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10000b

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-nez p1, :cond_2

    .line 209
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getUriType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 210
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getKeyword()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->b:Z

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->selectDlnaDms(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->selectDlnaDms(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "dlna_flat_search_error"

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c:Z

    .line 223
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->j()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    const v3, 0x7f140020

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 343
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f04006e

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026layout, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->k()V

    .line 256
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->setLaunchSearchEnabled(Z)V

    .line 246
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 237
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onResume()V

    .line 238
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->d:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->l()V

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->setLaunchSearchEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dlna_flat_search_error"

    .line 227
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 232
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStart()V

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->f()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->i()V

    .line 251
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 179
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const v0, 0x7f0b02a7

    .line 180
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.nearby_devices)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 184
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->i:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$onItemClickListener$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;)V

    .line 189
    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->b_(I)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v10, 0x2

    invoke-direct {v2, v4, v0, v10, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 193
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    const-string v3, "ServerContents.DEFAULT_SORT_ORDER"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1, v10, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 195
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 196
    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    const/4 v2, -0x5

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 200
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v5, 0x7f0b02c4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v0, v10, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 278
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
