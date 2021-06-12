.class public Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$Companion;


# instance fields
.field private b:Z

.field private c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private f:Landroid/content/Intent;

.field private g:Landroid/support/v4/app/Fragment;

.field private h:Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private final e()Landroid/support/v4/app/Fragment;
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 64
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->b:Z

    if-eqz v1, :cond_2

    const v1, 0x100025

    .line 65
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 70
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 74
    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->music_list:I

    .line 75
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    const-string v0, "fg"

    .line 78
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const v1, 0x100024

    .line 81
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_3

    .line 83
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;-><init>()V

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 84
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 86
    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->music_list:I

    .line 88
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_3
    return-object v2
.end method


# virtual methods
.method public a(JZ)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_2

    .line 177
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(JZ)V

    .line 178
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->g:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object p1

    .line 179
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->f:Landroid/content/Intent;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p3, "key_checked_ids"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 180
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->f:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 178
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
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

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public a([J)V
    .locals 1

    const-string v0, "checkedItemIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a([J)V

    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(J)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a()[J
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a()[J

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(I)[J
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(I)[J

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->b()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 105
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isMultiple"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->b:Z

    .line 109
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->b:Z

    if-eqz v0, :cond_0

    .line 110
    sget v0, Lcom/samsung/android/app/musiclibrary/R$layout;->sound_picker_multiple_search_activity:I

    goto :goto_0

    .line 112
    :cond_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$layout;->sound_picker_search_activity:I

    .line 108
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->setContentView(I)V

    .line 116
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;-><init>(Landroid/app/Activity;)V

    .line 117
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->a()Landroid/support/v7/widget/SearchView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->seslGetUpButton()Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "naviUp"

    .line 118
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$onCreate$$inlined$apply$lambda$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$onCreate$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->b:Z

    if-eqz v0, :cond_6

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "intent"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;-><init>()V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 127
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;Landroid/app/Activity;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-eqz p1, :cond_2

    const-string v0, "key_checked_item_ids"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const-string p1, "key_checked_ids"

    .line 132
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    .line 280
    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_5

    aget-wide v3, p1, v2

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 140
    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->f:Landroid/content/Intent;

    .line 143
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->e()Landroid/support/v4/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->g:Landroid/support/v4/app/Fragment;

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 148
    sget v0, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    .line 146
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->setIntent(Landroid/content/Intent;)V

    const-string v0, "android.intent.action.SEARCH"

    .line 157
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->a(Ljava/lang/String;)V

    const-string v0, "query"

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    const-string v1, "key_checked_item_ids"

    .line 99
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a()[J

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
