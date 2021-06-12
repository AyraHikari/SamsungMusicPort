.class public Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MusicProgressBarScrubbing"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/PopupWindow;

.field private final e:Landroid/widget/TextView;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private final m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->f:I

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->g:I

    .line 58
    iput v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->h:I

    .line 60
    iput v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->i:I

    .line 62
    iput v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->j:I

    .line 66
    iput v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->l:I

    .line 202
    new-instance v1, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing$1;-><init>(Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->m:Landroid/os/Handler;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->c:Landroid/view/View;

    .line 71
    sget-object p2, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicProgressBarScrubbing() - mContext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mView : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->c:Landroid/view/View;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 p2, 0x0

    const v1, 0x7f0400a5

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1, v1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, p1, v0, v2, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->d:Landroid/widget/PopupWindow;

    const p2, 0x7f1302bc

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->e:Landroid/widget/TextView;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "accessibility"

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    .line 193
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 195
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 196
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 198
    sget-object p1, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAccessibilityEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showScrubbingSpeedInfoPopup() - mPopupWindow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b:Landroid/content/Context;

    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->d:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->c:Landroid/view/View;

    const/16 v4, 0x30

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->c:Landroid/view/View;

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 96
    :goto_0
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .line 164
    iget v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->j:I

    iget v1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->f:I

    if-eq v0, v1, :cond_0

    .line 165
    sget-object v0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reprocessProgress() - mScrubbingSpeed was changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->i:I

    iput v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->g:I

    .line 167
    iput p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->h:I

    .line 169
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->f:I

    iput v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->j:I

    .line 170
    iget v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->g:I

    iget v2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->h:I

    sub-int/2addr p1, v2

    div-int/2addr p1, v1

    add-int/2addr p1, v0

    goto :goto_0

    .line 172
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->g:I

    iget v2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->h:I

    sub-int/2addr p1, v2

    div-int/2addr p1, v1

    add-int/2addr p1, v0

    :goto_0
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_3

    const/16 p1, 0x3e8

    .line 184
    :cond_3
    iput p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->i:I

    return p1
.end method

.method public a()V
    .locals 3

    .line 102
    sget-object v0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelScrubbingSpeedInfoPopup() -  mPopupWindow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->k:Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 10

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ea

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f1000ec

    .line 113
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 116
    iget-object v3, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->e:Landroid/widget/TextView;

    const v4, 0x7f0b0338

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v2, :cond_2

    .line 121
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v1, v0

    const v9, 0x7f0b0339

    if-le v8, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b:Landroid/content/Context;

    .line 124
    invoke-static {v2, v7, v3}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 123
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b:Landroid/content/Context;

    .line 130
    invoke-static {v2, v7, v5}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 129
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->l:I

    if-eq v1, v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    iput v1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->l:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 146
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_7

    .line 148
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->d:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_7

    if-eq v1, v3, :cond_6

    if-ne v1, v5, :cond_5

    goto :goto_2

    .line 153
    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->k:Z

    if-nez p1, :cond_7

    .line 154
    iput-boolean v7, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->k:Z

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->m:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->m:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 150
    :cond_6
    :goto_2
    iput-boolean v7, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->k:Z

    .line 151
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->m:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->b()V

    .line 160
    :cond_7
    :goto_3
    iput v1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->f:I

    return-void
.end method
