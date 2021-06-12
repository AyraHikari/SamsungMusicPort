.class public Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;

.field private final b:[I


# direct methods
.method constructor <init>([ILcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;->b:[I

    return-void
.end method

.method public static a(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x4

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)I
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;->a()I

    move-result p1

    .line 40
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;->a(I)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/SharedPreferences;I)V
    .locals 2

    const/4 p1, 0x2

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x1

    const-string p2, "Custom order"

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x5

    const-string p2, "Device"

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x4

    const-string p2, "Artist name"

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    const-string p2, "Track title"

    goto :goto_0

    :cond_1
    const-string p2, "Date added"

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;->a(I)V

    .line 74
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "303"

    const-string v1, "4342"

    .line 75
    invoke-virtual {p1, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()[I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;->b:[I

    return-object v0
.end method
