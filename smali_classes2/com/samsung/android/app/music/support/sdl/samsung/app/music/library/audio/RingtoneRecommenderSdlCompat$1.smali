.class Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->extract()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, -0x1

    .line 226
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->access$100(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0xc8

    .line 228
    :try_start_0
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 232
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->access$200(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;)Lcom/samsung/audio/Smat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/audio/Smat;->getState()I

    move-result v1

    .line 233
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extract() and background thread\'s run() status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->access$400(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->access$200(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;)Lcom/samsung/audio/Smat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/audio/Smat;->getInfo()J

    move-result-wide v2

    .line 245
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extract()  status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->access$400(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;

    move-result-object v0

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;->onResult(II)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->close()V

    :cond_1
    :goto_2
    move v0, v1

    goto :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
