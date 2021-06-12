.class public Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagPresenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;,
        Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "TagWidget$TagPresenter"


# instance fields
.field private final b:Landroid/view/View;

.field private final c:[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;

.field private final d:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;

.field private final e:[Ljava/lang/CharSequence;

.field private final f:[Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method varargs constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 34
    :cond_0
    array-length v1, p3

    .line 35
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->b:Landroid/view/View;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->d:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->c:[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->c:[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;

    if-eqz p1, :cond_1

    .line 40
    new-array p1, v1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->e:[Ljava/lang/CharSequence;

    .line 41
    new-array p1, v1, [Z

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->f:[Z

    const/4 p1, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 44
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->f:[Z

    const/4 p3, 0x1

    aput-boolean p3, p2, v0

    .line 45
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->c:[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;

    aget-object p2, p2, v0

    invoke-static {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;)V

    .line 46
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->c:[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;

    aget-object p2, p2, v0

    add-int/lit8 p3, p1, 0x1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;I)V

    add-int/lit8 v0, v0, 0x1

    move p1, p3

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->e:[Ljava/lang/CharSequence;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->f:[Z

    :cond_2
    return-void
.end method

.method private a(ZLandroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 108
    invoke-virtual {p2, p1, p3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 16

    move-object/from16 v0, p0

    .line 55
    iget-boolean v1, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->g:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->c:[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 58
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->a:Ljava/lang/String;

    const-string v2, "update()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 62
    iget-object v2, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 67
    invoke-static {}, Lcom/samsung/android/app/music/util/UiUtils;->a()Z

    move-result v3

    .line 69
    iget-object v4, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->c:[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;

    array-length v5, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v8, v5, :cond_3

    aget-object v12, v4, v8

    .line 70
    sget-object v13, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " -tag #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " - view : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->b:Landroid/view/View;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 72
    invoke-static {v12}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->b(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    move-result-object v14

    iget-object v15, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->b:Landroid/view/View;

    invoke-static {v12}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v14, v15, v6, v13, v9}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;->update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z

    move-result v6

    or-int/2addr v10, v6

    .line 74
    iget-object v6, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->e:[Ljava/lang/CharSequence;

    invoke-static {v12}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->c(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)I

    move-result v14

    aput-object v13, v6, v14

    .line 75
    iget-object v6, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->f:[Z

    invoke-static {v12}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->c(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)I

    move-result v12

    aput-boolean v7, v6, v12

    .line 77
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 78
    iget-object v6, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->d:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;

    if-eqz v6, :cond_1

    .line 79
    iget-object v6, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->d:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;

    invoke-interface {v6, v2, v11, v13, v9}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 81
    invoke-direct {v0, v3, v1, v6}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->a(ZLandroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    move-object v11, v13

    .line 87
    :cond_2
    invoke-direct {v0, v3, v1, v13}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->a(ZLandroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 89
    :cond_3
    iget-object v4, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->d:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;

    if-eqz v4, :cond_4

    .line 90
    iget-object v4, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->d:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v11, v5, v9}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->a(ZLandroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v10, :cond_6

    .line 95
    iget-object v2, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->b:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 96
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 97
    iget-object v2, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->b:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->b:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 100
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->b:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->f:[Z

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->c(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)I

    move-result p1

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 117
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->g:Z

    return-void
.end method
