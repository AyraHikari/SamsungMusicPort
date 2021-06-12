.class public final enum Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

.field public static final enum TAB_DRM:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

.field public static final enum TAB_MP3:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    const-string v2, "TAB_DRM"

    const/4 v3, 0x0

    .line 101
    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_DRM:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    const-string v2, "TAB_MP3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_MP3:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->$VALUES:[Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;
    .locals 1

    const-class v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->$VALUES:[Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->value:I

    return v0
.end method
