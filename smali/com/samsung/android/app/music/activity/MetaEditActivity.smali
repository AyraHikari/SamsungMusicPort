.class public Lcom/samsung/android/app/music/activity/MetaEditActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/widget/ButtonEditTextView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/support/design/widget/BottomNavigationView;

.field private e:Landroid/widget/Spinner;

.field private f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

.field private final g:Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;

.field private final h:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;

.field private final i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

.field private final j:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

.field private o:Ljava/lang/String;

.field private p:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a:Ljava/util/List;

    .line 74
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b:Landroid/util/LruCache;

    .line 79
    sget-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a:Ljava/util/List;

    const-string v1, "None"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a:Ljava/util/List;

    const-string v1, "UTF-8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a:Ljava/util/List;

    const-string v1, "UTF-16"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a:Ljava/util/List;

    const-string v1, "EUC-KR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a:Ljava/util/List;

    const-string v1, "Shift_JIS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a:Ljava/util/List;

    const-string v1, "GBK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a:Ljava/util/List;

    const-string v1, "Big5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$1;-><init>(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->g:Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;

    .line 141
    new-instance v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$2;-><init>(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->h:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    .line 164
    new-instance v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$3;-><init>(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 191
    new-instance v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$4;-><init>(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->j:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic a()Landroid/util/LruCache;
    .locals 1

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->e:Landroid/widget/Spinner;

    return-object p0
.end method

.method private a(II)Ljava/lang/String;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    if-eqz p1, :cond_0

    .line 514
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 242
    sget-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 244
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const p1, 0x7f0b0148

    .line 245
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    const p1, 0x7f0b012f

    .line 248
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 252
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_uri_string"

    .line 253
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_2

    .line 255
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 257
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 420
    sget v2, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v0, "MetaEditor"

    const-string v1, "full_screen_adjust_resize attribute is set."

    .line 423
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->b(Landroid/view/View;)V

    .line 426
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/activity/MetaEditActivity;Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/activity/MetaEditActivity;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/activity/MetaEditActivity;Ljava/lang/String;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;)V
    .locals 8

    .line 491
    iget-object v0, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 493
    :goto_1
    iget-object v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 494
    :goto_2
    iget-object v3, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ""

    goto :goto_3

    :cond_3
    iget-object v3, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 495
    :goto_3
    iget-object v4, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->i:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ""

    goto :goto_4

    :cond_4
    iget-object v4, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 496
    :goto_4
    iget-object v5, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, ""

    goto :goto_5

    :cond_5
    iget-object v5, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 497
    :goto_5
    iget-object v6, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->e:Ljava/lang/String;

    .line 498
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, ""

    goto :goto_6

    :cond_6
    iget-object v6, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->e:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 499
    :goto_6
    iget-object v7, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->q:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string p1, ""

    goto :goto_7

    :cond_7
    iget-object p1, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->q:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_7
    const/4 v7, 0x2

    .line 501
    invoke-direct {p0, v7, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 502
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 503
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(ILjava/lang/String;)V

    const/4 v0, 0x5

    .line 504
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(ILjava/lang/String;)V

    const/4 v0, 0x6

    .line 505
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(ILjava/lang/String;)V

    const/4 v0, 0x7

    .line 506
    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 507
    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(ILjava/lang/String;)V

    const/16 v0, 0x8

    .line 508
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/widget/ButtonEditTextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "SMUSIC-MetaEditor"

    .line 592
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/activity/MetaEditActivity;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/view/MenuItem;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->p:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/activity/MetaEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->o:Ljava/lang/String;

    return-object p1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "EUC-KR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "None"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "Big5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "GBK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "UTF-16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 277
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You should check encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "Traditional Chinese (BIG5)"

    return-object p0

    :pswitch_1
    const-string p0, "Simplified Chinese (GBK)"

    return-object p0

    :pswitch_2
    const-string p0, "Japanese (JIS)"

    return-object p0

    :pswitch_3
    const-string p0, "Korean (EUC-KR)"

    return-object p0

    :pswitch_4
    const-string p0, "Unicode (UTF-16)"

    return-object p0

    :pswitch_5
    const-string p0, "Unicode (UTF-8)"

    return-object p0

    :pswitch_6
    const-string p0, "None"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6a33dbd5 -> :sswitch_6
        -0x534a3669 -> :sswitch_5
        0x112d0 -> :sswitch_4
        0x1f9755 -> :sswitch_3
        0x252358 -> :sswitch_2
        0x4d50972 -> :sswitch_1
        0x7a8b57e1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f130070

    .line 430
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    const v1, 0x7f13019a

    .line 431
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    const v2, 0x7f130364

    .line 432
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    const v3, 0x7f130368

    .line 433
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    const v4, 0x7f13036a

    .line 434
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    const v5, 0x7f130074

    .line 435
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    const v6, 0x7f130366

    .line 436
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    const v7, 0x7f13036d

    .line 437
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    .line 439
    iget-object v7, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/activity/MetaEditActivity;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    return-object p0
.end method

.method private c()V
    .locals 6

    const-string v0, "MetaEditor"

    const-string v1, "saveMetaInfo()"

    .line 519
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0335

    .line 521
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 525
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 526
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 527
    iget-object v3, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 528
    iget-object v4, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    if-eqz v4, :cond_1

    .line 530
    invoke-virtual {v4}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    iget-object v3, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->n:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    iget-object v3, v3, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->h:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    iget-object v5, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->o:Ljava/lang/String;

    .line 535
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a(Landroid/util/SparseArray;Ljava/lang/String;Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;Ljava/lang/String;)I

    move-result v0

    const-string v2, "SMUSIC-MetaEditor"

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task fragment write result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_3

    const v0, 0x7f0b01b2

    .line 538
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    const v0, 0x7f0b012f

    .line 542
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 547
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->k:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->l:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 548
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->m:Z

    .line 549
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->pause()V

    .line 551
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->d()V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f130360

    .line 450
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 452
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b02c8

    .line 455
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b0428

    const v2, 0x7f0b051f

    .line 456
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0b051e

    .line 457
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b016e

    const v2, 0x7f0b04cc

    .line 458
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b016c

    const v2, 0x7f0b04d6

    .line 459
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b0387

    const v2, 0x7f0b04cf

    .line 460
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b03db

    const v2, 0x7f0b04b7

    .line 461
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 464
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040116

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 465
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v0, 0x7f130361

    .line 466
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->e:Landroid/widget/Spinner;

    .line 467
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 468
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->e:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->j:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    sget-object v1, Lcom/samsung/android/app/music/metaedit/MetaEditConstants;->a:Ljava/util/List;

    .line 479
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "metaInfoArray is null."

    const v0, 0x7f0b012f

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 484
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 485
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 486
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Lcom/samsung/android/app/music/widget/ButtonEditTextView;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()V
    .locals 3

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 557
    invoke-static {}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    const/4 v0, 0x0

    .line 562
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const v0, 0x7f0b0302

    .line 563
    invoke-static {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->a(I)Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;

    move-result-object v0

    const-string v2, "MetaEditor"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    const-string v0, "MetaEditor"

    const-string v1, "showProgressDialog()"

    .line 564
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->g()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 568
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 570
    invoke-static {}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$ProgressDialogFragment;->dismiss()V

    const-string v0, "MetaEditor"

    const-string v1, "hideProgressDialog()"

    .line 573
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->e()V

    return-void
.end method

.method private f()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 578
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    if-eqz v2, :cond_0

    .line 580
    invoke-virtual {v2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->l:Z

    return p0
.end method

.method private g()V
    .locals 3

    const-string v0, "input_method"

    .line 598
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->k:Z

    return p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->m:Z

    return p0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->n:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    return-object p0
.end method

.method static synthetic j(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->c()V

    return-void
.end method

.method static synthetic k(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->j:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "308"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 283
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040115

    .line 284
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->setContentView(I)V

    const v0, 0x7f1301a6

    .line 285
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;

    const v1, 0x7f0f003a

    .line 286
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;->a(ILjava/lang/Integer;)V

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/EasyModeUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-static {p0}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    const v0, 0x7f13036f

    .line 295
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomNavigationView;

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->d:Landroid/support/design/widget/BottomNavigationView;

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->d:Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f1305ea

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->p:Landroid/view/MenuItem;

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->d:Landroid/support/design/widget/BottomNavigationView;

    new-instance v2, Lcom/samsung/android/app/music/activity/MetaEditActivity$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$5;-><init>(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    const v0, 0x7f13035f

    .line 319
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Landroid/view/View;)V

    .line 321
    invoke-static {}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a()Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->n:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->n:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    if-nez v0, :cond_4

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v2, 0x7f0b012f

    if-nez v0, :cond_3

    const-string p1, "Intent is null."

    .line 325
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Ljava/lang/String;I)V

    return-void

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "extra_uri_string"

    .line 329
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 328
    invoke-static {v3, v0}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->n:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->n:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    if-nez v0, :cond_4

    const-string p1, "Meta Data is null."

    .line 331
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Ljava/lang/String;I)V

    return-void

    .line 336
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 337
    sget-object v2, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a:Ljava/lang/String;

    .line 338
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    iput-object v2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    .line 339
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    if-nez v2, :cond_5

    .line 340
    new-instance v2, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    .line 341
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    sget-object v3, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_5
    const-string v0, "MetaEditor"

    const-string v2, "onCreate : TaskFragment created or founded."

    .line 344
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_6

    .line 347
    iget-object v3, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->n:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    iget-object v5, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->n:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->n:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    iget-wide v6, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->a:J

    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->n:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    iget-object v8, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->g:Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;)V

    .line 349
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "308"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->g:Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->h:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f:Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;

    sget-object v2, Lcom/samsung/android/app/music/metaedit/MetaEditConstants;->a:Ljava/util/List;

    .line 355
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 357
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->e:Landroid/widget/Spinner;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    const-string v2, "MetaEditor"

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoding unified as : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->e:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->e:Landroid/widget/Spinner;

    new-instance v2, Lcom/samsung/android/app/music/activity/MetaEditActivity$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$6;-><init>(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->p:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const-string v0, "key_encoding_type"

    .line 373
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->o:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 391
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->g()V

    .line 392
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "key_encoding_type"

    .line 397
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 380
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 386
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onStop()V

    return-void
.end method
