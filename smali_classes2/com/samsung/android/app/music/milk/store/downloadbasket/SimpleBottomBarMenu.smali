.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

.field private final d:Landroid/view/Menu;

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;Landroid/view/Menu;Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->e:Z

    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->a:Landroid/view/ViewGroup;

    .line 111
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    .line 112
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->c:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    .line 113
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->d:Landroid/view/Menu;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;)Landroid/view/ViewGroup;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->a:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/Menu;Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;)Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;
    .locals 12

    const v0, 0x7f130009

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 45
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const v0, 0x7f130219

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/16 v2, 0x8

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_2

    .line 59
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 61
    :cond_2
    new-instance v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    invoke-direct {v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;-><init>()V

    .line 62
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/MenuItem;

    .line 63
    invoke-interface {v6}, Landroid/view/MenuItem;->getGroupId()I

    move-result v7

    const v8, 0x7f130026

    if-ne v7, v8, :cond_3

    .line 65
    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 66
    invoke-interface {v6}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 67
    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    .line 70
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f040176

    invoke-virtual {v10, v11, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 73
    invoke-virtual {v10, v7}, Landroid/view/View;->setId(I)V

    const v7, 0x7f13044c

    .line 75
    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 77
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v8, 0x7f13044d

    .line 79
    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 81
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 84
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 83
    invoke-static {v11, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 82
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v4, v8}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a(Landroid/view/View;)V

    .line 88
    invoke-virtual {v4, v7}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->b(Landroid/view/View;)V

    .line 89
    new-instance v7, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;

    new-instance v8, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$1;

    invoke-direct {v8, p2, v6}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;Landroid/view/MenuItem;)V

    invoke-direct {v7, v8}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 97
    :cond_4
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p2

    if-nez p2, :cond_5

    return-object v1

    .line 101
    :cond_5
    instance-of p2, p0, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    if-eqz p2, :cond_6

    .line 102
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    .line 104
    :cond_6
    new-instance p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    invoke-direct {p0, v0, v4, p1, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;-><init>(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;Landroid/view/Menu;Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;)V

    return-object p0
.end method

.method private c()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->e:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->e:Z

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->c:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->c:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;->onBottomBarMenuCreated()Z

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->e:Z

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a(Ljava/lang/Runnable;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->c:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->c:Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;->onBottomBarMenuDestroyed()Z

    :cond_0
    return-void
.end method
