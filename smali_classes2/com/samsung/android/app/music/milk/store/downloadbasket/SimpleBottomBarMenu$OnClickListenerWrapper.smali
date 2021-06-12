.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnClickListenerWrapper"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private final c:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 162
    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;->a:J

    const-wide/16 v0, 0x0

    .line 164
    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;->b:J

    .line 169
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;->c:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 176
    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;->b:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 177
    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;->b:J

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$OnClickListenerWrapper;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
