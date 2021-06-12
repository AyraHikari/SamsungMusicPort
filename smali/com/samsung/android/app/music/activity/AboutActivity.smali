.class public Lcom/samsung/android/app/music/activity/AboutActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AboutActivity"

.field private static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private final e:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;

.field private f:Z

.field private final g:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/activity/AboutActivity;->d:Landroid/util/SparseArray;

    .line 93
    sget-object v0, Lcom/samsung/android/app/music/activity/AboutActivity;->d:Landroid/util/SparseArray;

    const-string v1, "5073"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;->a(IILjava/lang/String;)Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;

    move-result-object v1

    const v3, 0x7f13011a

    .line 93
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 98
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 100
    :goto_0
    sget-object v3, Lcom/samsung/android/app/music/activity/AboutActivity;->d:Landroid/util/SparseArray;

    const v4, 0x7f130119

    const-string v5, "5072"

    const-string v6, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_tnc.html"

    .line 101
    invoke-static {v0, v2, v5, v6}, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;

    move-result-object v2

    .line 100
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 103
    sget-object v2, Lcom/samsung/android/app/music/activity/AboutActivity;->d:Landroid/util/SparseArray;

    const v3, 0x7f130118

    const-string v4, "5242"

    const-string v5, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information.html"

    .line 104
    invoke-static {v0, v1, v4, v5}, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;

    move-result-object v0

    .line 103
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->c:I

    .line 108
    new-instance v0, Lcom/samsung/android/app/music/activity/AboutActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/AboutActivity$1;-><init>(Lcom/samsung/android/app/music/activity/AboutActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->e:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;

    .line 116
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->q_:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->f:Z

    .line 118
    new-instance v0, Lcom/samsung/android/app/music/activity/AboutActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/AboutActivity$2;-><init>(Lcom/samsung/android/app/music/activity/AboutActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->g:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/activity/AboutActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(IZ)V
    .locals 3

    .line 285
    sget-object v0, Lcom/samsung/android/app/music/activity/AboutActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStateAndViews() - old-state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", curr-state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", force-update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 287
    iget p2, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->c:I

    if-ne p2, p1, :cond_1

    .line 288
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/activity/AboutActivity;->a:Ljava/lang/String;

    const-string p2, "Ignore update!"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 291
    :cond_1
    iput p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->c:I

    const p1, 0x7f130113

    .line 292
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f130114

    .line 293
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f130112

    .line 294
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget v2, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->c:I

    if-nez v2, :cond_2

    const v1, 0x7f0b042c

    .line 298
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 299
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const p2, 0x7f0b02ac

    .line 301
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 302
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    new-instance p2, Lcom/samsung/android/app/music/activity/AboutActivity$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/activity/AboutActivity$4;-><init>(Lcom/samsung/android/app/music/activity/AboutActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 375
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 376
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    const v0, 0x7f130073

    .line 377
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 378
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 379
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 381
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "current_version"

    .line 367
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->b:Ljava/lang/String;

    const-string v0, "state_for_update"

    const/4 v1, -0x1

    .line 368
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->c:I

    const-string v0, "need_to_data_check_dialog"

    .line 369
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->f:Z

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 3

    .line 242
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v2, 0x7f1000a1

    .line 245
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/widget/TextView;I)V

    .line 246
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0b0105

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    new-instance v0, Lcom/samsung/android/app/music/activity/AboutActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/AboutActivity$3;-><init>(Lcom/samsung/android/app/music/activity/AboutActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;IF)F

    move-result p2

    const/4 v0, 0x1

    .line 209
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/activity/AboutActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->i()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/activity/AboutActivity;IZ)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/activity/AboutActivity;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->f:Z

    return p1
.end method

.method static synthetic b()Landroid/util/SparseArray;
    .locals 1

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/activity/AboutActivity;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method private c()V
    .locals 2

    .line 186
    invoke-static {p0}, Lcom/samsung/android/app/music/util/UiUtils;->h(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f130116

    .line 188
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 189
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x30

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    const v0, 0x7f13010f

    .line 196
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10009d

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f130110

    .line 198
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1000ac

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f130112

    .line 200
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10009e

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f130114

    .line 202
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1000aa

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/widget/TextView;I)V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    const v0, 0x7f13010f

    .line 227
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 228
    invoke-static {p0}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e()V
    .locals 2

    const v0, 0x7f130119

    .line 232
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/widget/TextView;)V

    const v0, 0x7f13011a

    .line 233
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/widget/TextView;)V

    .line 234
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const v0, 0x7f130118

    .line 235
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.android.app.music"

    .line 265
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 267
    sget-object v2, Lcom/samsung/android/app/music/activity/AboutActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception -getting current version name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const v0, 0x7f130110

    .line 270
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0431

    const/4 v3, 0x1

    .line 271
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->b:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/activity/AboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 275
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const v0, 0x7f13011c

    .line 276
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f10030c

    .line 278
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/widget/TextView;I)V

    .line 280
    sget-object v1, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->ABOUT:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->buildNotice(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->f:Z

    if-eqz v0, :cond_1

    .line 327
    sget-object v0, Lcom/samsung/android/app/music/activity/AboutActivity;->a:Ljava/lang/String;

    const-string v1, "Try to show data check dialog for the CHN model"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "data_check_help_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->g:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->f:Z

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->i()V

    goto :goto_0

    .line 334
    :cond_0
    instance-of v1, v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    if-eqz v1, :cond_3

    .line 335
    check-cast v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->g:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;)V

    goto :goto_0

    .line 337
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->i()V

    goto :goto_0

    .line 340
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->c:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 345
    sget-object v0, Lcom/samsung/android/app/music/activity/AboutActivity;->a:Ljava/lang/String;

    const-string v1, "checkNeedToAppUpdate()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f130113

    .line 346
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    invoke-static {}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a()Lcom/samsung/android/app/music/update/SamsungAppsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.music"

    iget-object v3, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->e:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040005

    .line 134
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->setContentView(I)V

    .line 135
    invoke-direct {p0, p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/app/Activity;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Landroid/os/Bundle;)V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->h()V

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->c()V

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->d()V

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->f()V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->e()V

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->g()V

    if-nez p1, :cond_0

    .line 147
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "404"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    .line 150
    :cond_0
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->l:Z

    if-eqz p1, :cond_1

    const-string p1, "music_player_pref"

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    .line 153
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    .line 155
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f140036

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    .line 353
    invoke-static {}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a()Lcom/samsung/android/app/music/update/SamsungAppsManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.music"

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->e:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a(Ljava/lang/String;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    .line 354
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1305f5

    if-ne v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "launcherapps"

    .line 172
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    .line 173
    new-instance v0, Landroid/content/ComponentName;

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    .line 173
    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 177
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "404"

    const-string v1, "5241"

    .line 178
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 359
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "current_version"

    .line 360
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state_for_update"

    .line 361
    iget v1, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "need_to_data_check_dialog"

    .line 362
    iget-boolean v1, p0, Lcom/samsung/android/app/music/activity/AboutActivity;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
