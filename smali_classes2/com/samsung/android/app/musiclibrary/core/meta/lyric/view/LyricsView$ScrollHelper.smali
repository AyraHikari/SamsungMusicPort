.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScrollHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLL:I = 0x80

.field private static final DIRECTION_TO_BOTTOM:I = 0x1

.field private static final DIRECTION_TO_TOP:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

.field private mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mScrollListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LyricsUx-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    .line 1046
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1042
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollListeners:Ljava/util/ArrayList;

    .line 1056
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;)V
    .locals 0

    .line 1042
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;-><init>()V

    return-void
.end method

.method static synthetic access$3100(I)Ljava/lang/String;
    .locals 0

    .line 1042
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->toScrollStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;
    .locals 0

    .line 1042
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    return-object p0
.end method

.method private assignInputSourceInternal(I)V
    .locals 3

    .line 1147
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assign input source : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->inputSource:I

    return-void
.end method

.method private assignInputSourceInternal(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->assignInputSourceInternal(I)V

    return-void
.end method

.method private buildStatusInternal(III)V
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->dx:I

    .line 1201
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iput p2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->dy:I

    .line 1202
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iput p3, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->lastDir:I

    return-void
.end method

.method private buildStatusInternal(IIIII)V
    .locals 0

    .line 1206
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->buildStatusInternal(III)V

    .line 1208
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iput p4, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->oldState:I

    .line 1209
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->inputSource:I

    .line 1210
    invoke-direct {p0, p2, p4, p5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->calculateNewStateInternal(III)I

    move-result p2

    iput p2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->currState:I

    return-void
.end method

.method private calculateNewStateInternal(III)I
    .locals 0

    and-int/lit16 p2, p2, 0x80

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    or-int/lit16 p1, p3, 0x80

    return p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 1218
    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->matchState(II)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit16 p1, p3, 0x80

    return p1

    :cond_2
    return p3
.end method

.method private static toScrollStateString(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const-string v0, "AUTO "

    and-int/lit16 p0, p0, -0x81

    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1075
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SETTLING"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1078
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DRAGGING"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1072
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "IDLE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;)V
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1134
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericMotion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->assignInputSourceInternal(Landroid/view/MotionEvent;)V

    .line 1137
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    .line 1138
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 7

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->currState:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v5, v0

    move v6, p2

    .line 1182
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->buildStatusInternal(IIIII)V

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x0

    .line 1185
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->assignInputSourceInternal(I)V

    :cond_0
    if-nez v0, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 1191
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;

    .line 1192
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;)V

    goto :goto_0

    .line 1195
    :cond_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollStateChanged status  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .line 1155
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    if-lez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1158
    :goto_0
    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->buildStatusInternal(III)V

    .line 1163
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->currState:I

    .line 1164
    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->matchState(II)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1165
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iput v1, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->oldState:I

    .line 1166
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->inputSource:I

    if-nez p2, :cond_2

    .line 1167
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iget p3, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->currState:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->currState:I

    .line 1169
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    iput v1, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->inputSource:I

    .line 1171
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;

    .line 1172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    invoke-interface {p3, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;)V

    goto :goto_1

    .line 1175
    :cond_4
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScrolled status : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1125
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->assignInputSourceInternal(Landroid/view/MotionEvent;)V

    .line 1128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method removeListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;)V
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mScrollListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resetOwner()V
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    if-nez v0, :cond_0

    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$3000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$3000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$3000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    const/4 v0, 0x0

    .line 1107
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 1108
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1109
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-void
.end method

.method setOwner(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1090
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 1091
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$2800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/view/View$OnGenericMotionListener;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    .line 1092
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$2900(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/view/View$OnTouchListener;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1094
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$3000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1095
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$3000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1096
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$3000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    return-void
.end method
