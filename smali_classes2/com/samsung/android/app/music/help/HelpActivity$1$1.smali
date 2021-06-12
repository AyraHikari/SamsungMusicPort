.class Lcom/samsung/android/app/music/help/HelpActivity$1$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/help/HelpActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/help/HelpActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/help/HelpActivity$1;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/help/HelpActivity$1$1;->a:Lcom/samsung/android/app/music/help/HelpActivity$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/help/HelpActivity$1$1;->a:Lcom/samsung/android/app/music/help/HelpActivity$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/app/music/help/HelpActivity$1;->a:Z

    return-void
.end method
