.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;
    }
.end annotation


# static fields
.field public static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract setOnResultListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$OnResultListener;)V
.end method

.method public abstract syncExecute()Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/IQueueOrder$Result;
.end method
