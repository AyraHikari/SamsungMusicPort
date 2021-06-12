.class public final Lcom/samsung/android/app/music/activity/InternalPickerActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;,
        Lcom/samsung/android/app/music/activity/InternalPickerActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/activity/InternalPickerActivity$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private e:Landroid/support/design/widget/TabLayout;

.field private f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:I

.field private final k:Lcom/samsung/android/app/music/activity/InternalPickerActivity$onPageChangeListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/InternalPickerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->a:Lcom/samsung/android/app/music/activity/InternalPickerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->g:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->i:I

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/activity/InternalPickerActivity$onPageChangeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity$onPageChangeListener$1;-><init>(Lcom/samsung/android/app/music/activity/InternalPickerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->k:Lcom/samsung/android/app/music/activity/InternalPickerActivity$onPageChangeListener$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/InternalPickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/InternalPickerActivity;I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->h:I

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/activity/InternalPickerActivity;I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->i:I

    return-void
.end method


# virtual methods
.method public a(JZ)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v0, :cond_0

    const-string v1, "multipleItemPickerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(JZ)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-nez v0, :cond_0

    const-string v1, "selectAll"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v0, :cond_0

    const-string v1, "multipleItemPickerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "removeIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v0, :cond_0

    const-string v1, "multipleItemPickerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a([J)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v0, :cond_0

    const-string v1, "multipleItemPickerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a([J)V

    return-void
.end method

.method public a(J)Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v0, :cond_0

    const-string v1, "multipleItemPickerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(J)Z

    move-result p1

    return p1
.end method

.method public a()[J
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v0, :cond_0

    const-string v1, "multipleItemPickerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a()[J

    move-result-object v0

    const-string v1, "multipleItemPickerManager.checkedItemIdsInArray"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(I)[J
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v0, :cond_0

    const-string v1, "multipleItemPickerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(I)[J

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v0, :cond_0

    const-string v1, "multipleItemPickerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->b()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "multipleItemPickerManager.checkedItemIds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()I
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v0, :cond_0

    const-string v1, "multipleItemPickerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->c()I

    move-result v0

    return v0
.end method

.method public d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-nez v0, :cond_0

    const-string v1, "selectAllViewHolder"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public isLaunchSearchEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public launchSearch()V
    .locals 3

    .line 233
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_checked_ids"

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->a()[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 235
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    const-string v1, "extra_item_count"

    iget v2, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x7be

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x7be

    if-ne p1, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_1

    .line 189
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p2, "key_checked_ids"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->a([J)V

    goto :goto_0

    :pswitch_1
    const/4 p1, -0x1

    .line 184
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 95
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 99
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 97
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;ZZLcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;ILjava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "create_playlist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 106
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->setSearchLaunchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V

    const v0, 0x7f0400c6

    .line 108
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->setContentView(I)V

    .line 109
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;-><init>()V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 111
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f0b0350

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-nez v0, :cond_1

    const-string v1, "selectAll"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 116
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 117
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_2
    const v0, 0x7f130073

    .line 120
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    :cond_3
    if-eqz v0, :cond_5

    .line 122
    iget-object v3, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-nez v3, :cond_4

    const-string v4, "selectAllViewHolder"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_5
    const v0, 0x110001

    .line 124
    iput v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->i:I

    .line 125
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v3, :cond_6

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_item_count"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->j:I

    :cond_6
    if-eqz p1, :cond_8

    const-string v3, "selected_list_type"

    .line 129
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->i:I

    const-string v0, "key_tab_id"

    .line 130
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->h:I

    const-string v0, "checked_item_ids"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    const-string v0, "checkedItemIds"

    .line 132
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_8

    aget-wide v4, p1, v3

    .line 132
    iget-object v6, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v6, :cond_7

    const-string v7, "multipleItemPickerManager"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_7
    invoke-interface {v6, v4, v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(JZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string v0, "config"

    .line 136
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->g:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/List;)V

    :cond_9
    const p1, 0x7f13007c

    .line 138
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    .line 139
    new-instance v3, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "supportFragmentManager"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/app/music/activity/InternalPickerActivity$InternalPickerViewPagerAdapter;-><init>(Lcom/samsung/android/app/music/activity/InternalPickerActivity;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    check-cast v3, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 140
    iget-object v3, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->k:Lcom/samsung/android/app/music/activity/InternalPickerActivity$onPageChangeListener$1;

    check-cast v3, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 141
    iget-object v3, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setOffscreenPageLimit(I)V

    .line 142
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    const-string v3, "findViewById<MusicViewPa\u2026eEnabled(false)\n        }"

    .line 138
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    const p1, 0x7f130142

    .line 145
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 146
    iget-object v3, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v3, :cond_a

    const-string v4, "viewPager"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_a
    check-cast v3, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 148
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 149
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100614

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 147
    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/design/widget/TabLayout;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 151
    iget-object v3, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->g:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 152
    :cond_b
    iget-object v3, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->g:Ljava/util/ArrayList;

    check-cast v3, Ljava/lang/Iterable;

    .line 314
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 153
    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    if-eqz v5, :cond_c

    const-string v6, "getTabAt(it) ?: return@forEach"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 156
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b0416

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "context.getString(R.string.tts_tab_n_of_n)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v2

    iget-object v4, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v1

    .line 155
    array-length v4, v8

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/support/design/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_1

    :cond_d
    const-string v1, "findViewById<TabLayout>(\u2026\"\n            }\n        }"

    .line 145
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->e:Landroid/support/design/widget/TabLayout;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->clearOnPageChangeListeners()V

    .line 176
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 163
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onResume()V

    .line 164
    iget v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->i:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    const-string v0, "select_tracks_track"

    goto :goto_0

    :sswitch_1
    const-string v0, "select_tracks_folder"

    goto :goto_0

    :sswitch_2
    const-string v0, "select_tracks_artist"

    goto :goto_0

    :sswitch_3
    const-string v0, "select_tracks_album"

    :goto_0
    if-eqz v0, :cond_0

    .line 171
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_3
        0x10003 -> :sswitch_2
        0x10007 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selected_list_type"

    .line 84
    iget v1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "checked_item_ids"

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v1, :cond_0

    const-string v2, "multipleItemPickerManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a()[J

    move-result-object v1

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v0, "key_tab_id"

    .line 89
    iget v1, p0, Lcom/samsung/android/app/music/activity/InternalPickerActivity;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0

    return-void
.end method
