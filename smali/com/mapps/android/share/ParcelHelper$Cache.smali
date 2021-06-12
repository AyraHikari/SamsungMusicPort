.class public Lcom/mapps/android/share/ParcelHelper$Cache;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/share/ParcelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ParcelHelper;


# direct methods
.method public constructor <init>(Lcom/mapps/android/share/ParcelHelper;)V
    .locals 2

    .line 137
    iput-object p1, p0, Lcom/mapps/android/share/ParcelHelper$Cache;->this$0:Lcom/mapps/android/share/ParcelHelper;

    const/16 p1, 0x65

    const v0, 0x3f8ccccd    # 1.1f

    const/4 v1, 0x1

    .line 138
    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/mapps/android/share/ParcelHelper$Cache;->size()I

    move-result p1

    const/16 v0, 0x65

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
