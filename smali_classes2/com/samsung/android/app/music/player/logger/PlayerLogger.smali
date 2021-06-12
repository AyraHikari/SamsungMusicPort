.class public final Lcom/samsung/android/app/music/player/logger/PlayerLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->a(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->a:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->b(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->b:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->c(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->c:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->d(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->d:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->e(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->e:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->f(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->f:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->g(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->g:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->h(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->h:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->i(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->i:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;->j(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->j:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;Lcom/samsung/android/app/music/player/logger/PlayerLogger$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/logger/PlayerLogger;-><init>(Lcom/samsung/android/app/music/player/logger/PlayerLogger$Builder;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->b:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "1"

    goto :goto_0

    :pswitch_1
    const-string v0, "0"

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->i:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->j:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    .line 160
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v2

    .line 158
    invoke-static {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->c:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "All"

    goto :goto_0

    :pswitch_1
    const-string v0, "One"

    goto :goto_0

    :pswitch_2
    const-string v0, "Off"

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->h:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->d:Ljava/lang/String;

    const-string v2, "Play"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->d:Ljava/lang/String;

    const-string v2, "Pause"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/logger/PlayerLogger;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
