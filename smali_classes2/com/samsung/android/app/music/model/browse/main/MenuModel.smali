.class public Lcom/samsung/android/app/music/model/browse/main/MenuModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected description:Ljava/lang/String;

.field protected menuId:Ljava/lang/String;

.field protected order:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/MenuModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/MenuModel;->menuId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/samsung/android/app/music/model/browse/main/MenuModel;->order:I

    return v0
.end method
