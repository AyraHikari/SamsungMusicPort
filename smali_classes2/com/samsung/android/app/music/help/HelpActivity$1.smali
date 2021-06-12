.class Lcom/samsung/android/app/music/help/HelpActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/help/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/samsung/android/app/music/help/HelpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/help/HelpActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/help/HelpActivity$1;->b:Lcom/samsung/android/app/music/help/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/app/music/help/HelpActivity$1;->a:Z

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 43
    iget-boolean p1, p0, Lcom/samsung/android/app/music/help/HelpActivity$1;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "HelpActivity"

    const-string p2, "Prevent double tap."

    .line 44
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/app/music/help/HelpActivity$1;->a:Z

    .line 50
    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    new-instance p4, Lcom/samsung/android/app/music/help/HelpActivity$1$1;

    invoke-direct {p4, p0}, Lcom/samsung/android/app/music/help/HelpActivity$1$1;-><init>(Lcom/samsung/android/app/music/help/HelpActivity$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p4, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 62
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/music/help/HelpActivity$1;->b:Lcom/samsung/android/app/music/help/HelpActivity;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/help/MuseUtils;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/help/HelpActivity$1;->b:Lcom/samsung/android/app/music/help/HelpActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/samsung/android/app/music/help/HelpActivity$1;->b:Lcom/samsung/android/app/music/help/HelpActivity;

    const-class p4, Lcom/samsung/android/app/music/help/NoticeListActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/help/HelpActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
