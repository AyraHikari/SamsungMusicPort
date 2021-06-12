.class Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$4;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$4;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01e6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
