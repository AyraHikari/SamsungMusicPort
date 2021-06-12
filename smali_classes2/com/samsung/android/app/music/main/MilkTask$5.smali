.class Lcom/samsung/android/app/music/main/MilkTask$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/advertise/IAdImpressionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/main/MilkTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MilkTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MilkTask;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$5;->a:Lcom/samsung/android/app/music/main/MilkTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "MainActivity"

    return-object v0
.end method

.method public a(Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;)V
    .locals 3

    const-string v0, "MActivity"

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopupClosed : type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/samsung/android/app/music/main/MilkTask$7;->a:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "MActivity"

    const-string v0, "onPopupClosed : type = POSTROLL"

    .line 320
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a()Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->c()V

    .line 322
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$5;->a:Lcom/samsung/android/app/music/main/MilkTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MilkTask;->a(Lcom/samsung/android/app/music/main/MilkTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->finish()V

    goto :goto_0

    :pswitch_1
    const-string p1, "MActivity"

    const-string v0, "onPopupClosed : type = INTERSTITIAL"

    .line 316
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a()Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->c()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 3

    const-string v0, "MActivity"

    const-string v1, "onPopupAdImage"

    .line 304
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask$5;->a:Lcom/samsung/android/app/music/main/MilkTask;

    .line 306
    invoke-static {v0}, Lcom/samsung/android/app/music/main/MilkTask;->a(Lcom/samsung/android/app/music/main/MilkTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)V

    return-void
.end method
