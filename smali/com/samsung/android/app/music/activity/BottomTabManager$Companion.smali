.class public final Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/BottomTabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;-><init>()V

    return-void
.end method

.method private final a(I)Ljava/lang/String;
    .locals 2

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fragment_tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;
    .locals 0

    .line 604
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    :goto_0
    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)I
    .locals 0

    .line 604
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->b(I)I

    move-result p0

    return p0
.end method
